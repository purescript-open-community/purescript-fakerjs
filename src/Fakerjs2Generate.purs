module Fakerjs2Generate where

import Fakerjs2Generate.JavascriptBetter.Encode.CodeGenOutput
import Prelude

import Control.Monad.Error.Class (throwError, try)
import Control.Parallel (parTraverse)
import Data.Argonaut.Core as J
import Data.Array.NonEmpty (NonEmptyArray)
import Data.Array.NonEmpty as NonEmptyArray
import Data.Codec.Argonaut (decode, printJsonDecodeError) as C
import Data.Codec.Argonaut.Common (JsonDecodeError) as CA
import Data.Either (Either(..))
import Data.Exists (Exists)
import Data.Exists as Exists
import Data.Foldable (all)
import Data.Maybe (Maybe(..), fromJust, fromMaybe, maybe)
import Data.String (Pattern(..), stripPrefix)
import Data.String as String
import Data.String.Extra (pascalCase)
import Data.String.NonEmpty (NonEmptyString)
import Data.String.NonEmpty as NonEmptyString
import Data.Traversable (traverse, traverse_)
import Data.Tuple (Tuple(..))
import Data.Tuple.Nested (type (/\), (/\))
import Debug (traceM)
import Effect (Effect)
import Effect.Aff (Aff, Error, launchAff_)
import Effect.Class (liftEffect)
import Effect.Class.Console (log)
import Effect.Console as Console
import Effect.Exception (error, message)
import Fakerjs2Generate.Both (Both(..), zipRecordToBoth)
import Fakerjs2Generate.Javascript (Javascript, javascriptCodec)
import Fakerjs2Generate.JavascriptBetter.Decode (decoders)
import Fakerjs2Generate.JavascriptBetter.Decode.Impl (Decoder)
import Fakerjs2Generate.JavascriptBetter.Encode.CodeGenOutput (EncoderToExport)
import Fakerjs2Generate.JavascriptBetter.Encode (encoders)
import Fakerjs2Generate.JavascriptBetter.Encode.Impl (Encoder)
import Fakerjs2Generate.JavascriptBetter.Encode.Utils (add_ifPurescriptKeyword)
import Fakerjs2Generate.JavascriptBetter.JavascriptError (JavascriptDecodeError, printJavascriptDecodeError)
import Fakerjs2Generate.JavascriptBetter.Types (DirsTo)
import Fakerjs2Generate.Load (loadPathDefault)
import Fakerjs2Generate.Utils (lefts, leftsNE, rights, rightsNE, splitNE)
import Foreign.Object (Object)
import Foreign.Object as Object
import Node.Encoding (Encoding(..))
import Node.FS.Aff (globDirent', mkdir', writeTextFile)
import Node.FS.Dirent (Dirent, DirentNameString, DirentType(..))
import Node.FS.Dirent as Dirent
import Node.FS.Options (mkdirOptionsDefault)
import Node.Path as Path
import Partial.Unsafe (unsafePartial)
import Prim.Row as Row
import PureScript.CST.Types (Expr, Module)
import Record as Record
import Tidy.Codegen (declValue, printModule)
import Tidy.Codegen.Monad (Codegen)
import Tidy.Codegen.Monad as Tidy.Codegen.Monad
import Type.Prelude (class IsSymbol, Proxy(..))
import Unsafe.Coerce (unsafeCoerce)

inputDir :: String
inputDir = "/home/srghma/projects/faker/src/locales"

outputDir :: String
outputDir = "/home/srghma/projects/purescript-fakerjs/src/Fakerjs2/Locales"

-----------------------------------------------------------

pathInfoToStringArray :: PathInfo -> Array String
pathInfoToStringArray { languageName, dir, dir2, fileName } =
  let
    languageNameStr = NonEmptyString.toString languageName
    dirStr = NonEmptyString.toString dir
    dir2StrArray = maybe [] (\x -> [ NonEmptyString.toString x ]) dir2 :: Array String
    fileNameStr = NonEmptyString.toString fileName
  in
    [ inputDir, languageNameStr, dirStr ] <> dir2StrArray <> [ fileNameStr ]

pathInfoToString :: PathInfo -> String
pathInfoToString = Path.concat <<< pathInfoToStringArray

stripExt :: String -> String
stripExt s = fromMaybe s $ String.stripSuffix (Pattern ".ts") s

pathToKey :: PathInfo -> String
pathToKey { dir, dir2, fileName } =
  let
    dirStr = NonEmptyString.toString dir
    dir2Str = maybe "" (\d -> "/" <> NonEmptyString.toString d) dir2
    fileStr = stripExt $ NonEmptyString.toString fileName
  in
    dirStr <> dir2Str <> "/" <> fileStr

loadOutputFromPath :: PathInfo -> Aff (Tuple PathInfo (Either Error J.Json))
loadOutputFromPath pathInfo = do
  (output :: Either Error J.Json) <- try $ loadPathDefault (pathInfoToString pathInfo)
  pure $ Tuple pathInfo output

-----------------------------------------------------------

fileNameIsValid :: Dirent DirentNameString -> Boolean
fileNameIsValid dirent =
  case Dirent.getType dirent of
    DirentType_File ->
      let
        name = Dirent.name dirent
      in
        all identity
          [ name /= "index.ts"
          , name /= "metadata.ts"
          -- , (not $ endsWith (toPath dirent) "locales/base/location/time_zone.ts")
          -- , (not $ endsWith (toPath dirent) "locales/hr/location/county.ts")
          ]

    DirentType_Directory -> true
    _ -> false

toPath :: Dirent DirentNameString -> String
toPath d = Path.concat [ unsafePartial $ fromJust $ stripPrefix (Pattern inputDir) $ Dirent.parentPath d, Dirent.name d ]

encode' :: forall r @s o. Partial => IsSymbol s => Row.Cons s (EncoderToExport o) r (DirsTo EncoderToExport) => EncoderToExport o
encode' = Record.get (Proxy :: Proxy s) encoders

decode' :: forall r @s o. IsSymbol s => Row.Cons s (Decoder o) r (DirsTo Decoder) => Decoder o
decode' = Record.get (Proxy :: Proxy s) decoders

-- encodeDecodeBetter'
--   :: forall r r2 @s decoderOutputEncoderInput
--    . Partial
--   => IsSymbol s
--   => Row.Cons s (Decoder decoderOutputEncoderInput) r (DirsTo Decoder)
--   => Row.Cons s (Encoder decoderOutputEncoderInput) r2 (DirsTo Encoder)
--   => Javascript
--   -> Either JavascriptDecodeError CodeGenOutput
-- encodeDecodeBetter' javascript = do
--   decoderOutput <- (decode' @s javascript :: Either JavascriptDecodeError decoderOutputEncoderInput)
--   Right (encode' @s decoderOutput)
--
-- encodeDecodeBetter :: Partial => String -> Maybe (Javascript -> Either JavascriptDecodeError CodeGenOutput)
-- encodeDecodeBetter "cell_phone/formats" = Just (encodeDecodeBetter' @"cell_phone/formats")
-- encodeDecodeBetter _ = Nothing -- TODO

javascripDecoderForKey'' :: Partial => String -> Maybe (Exists Both)
javascripDecoderForKey'' s = Object.lookup s encoderDecoderObject

javascripDecoderForKey :: Partial => String -> Maybe (Javascript -> Either JavascriptDecodeError CodeGenOutput)
javascripDecoderForKey s = map (Exists.runExists (\(Both (Tuple decode encode)) javascript -> map encode (decode javascript))) $ javascripDecoderForKey'' s

javascripDecoderForKey' :: Partial => String -> Aff (Javascript -> Either JavascriptDecodeError CodeGenOutput)
javascripDecoderForKey' s = maybe (throwError $ error $ "Key not found " <> s) pure $ javascripDecoderForKey s

encoderDecoder :: Partial => Record (DirsTo Both)
encoderDecoder = zipRecordToBoth decoders encoders

encoderDecoderObject :: Partial => Object (Exists Both)
encoderDecoderObject = recordToObjectExists encoderDecoder

recordToObjectExists :: forall f. Record (DirsTo f) -> Object (Exists f)
recordToObjectExists = unsafeCoerce

type PathInfo =
  { languageName :: NonEmptyString
  , dir :: NonEmptyString
  , dir2 :: Maybe NonEmptyString
  , fileName :: NonEmptyString
  }

toPathInfo :: NonEmptyArray NonEmptyString -> Maybe PathInfo
toPathInfo xs = case NonEmptyArray.toArray xs of
  [ a, b, c ] -> Just { languageName: a, dir: b, dir2: Nothing, fileName: c }
  [ a, b, c, d ] -> Just { languageName: a, dir: b, dir2: Just c, fileName: d }
  _ -> Nothing

main :: Effect Unit
main = launchAff_ $ do
  (files :: Array String) <- map toPath <$> globDirent'
    -- [ "base/**/*.ts"
    [ "a*/**/*.ts"
    , "b*/**/*.ts"
    , "c*/**/*.ts"
    , "d*/**/*.ts"
    , "e*/**/*.ts"
    , "f*/**/*.ts"
    , "g*/**/*.ts"
    , "h*/**/*.ts"
    , "i*/**/*.ts"
    , "j*/**/*.ts"
    , "k*/**/*.ts"
    , "l*/**/*.ts"
    , "m*/**/*.ts"
    , "n*/**/*.ts"
    , "o*/**/*.ts"
    , "p*/**/*.ts"
    , "q*/**/*.ts"
    , "r*/**/*.ts"
    , "s*/**/*.ts"
    , "t*/**/*.ts"
    , "u*/**/*.ts"
    , "v*/**/*.ts"
    , "w*/**/*.ts"
    , "x*/**/*.ts"
    , "y*/**/*.ts"
    , "z*/**/*.ts"
    ]
    { cwd: Just inputDir
    , exclude: Just \dirent -> not $ fileNameIsValid dirent
    }
  --
  -- log $ show files

  -- let (files :: Array String) = map (\x -> unsafePartial $ fromJust $ stripPrefix (Pattern inputDir) x) [ "/home/srghma/projects/faker/src/locales/base/color/space.ts" ]

  -- liftEffect $ logShow files
  let (filesE :: NonEmptyArray String) = unsafePartial $ fromJust $ NonEmptyArray.fromArray files
  -- log $ "filesE"
  let (filesNE :: NonEmptyArray NonEmptyString) = map (\x -> unsafePartial $ fromJust $ NonEmptyString.fromString x) $ filesE
  -- log $ "filesNE"
  -- let (filesNEWoutts :: NonEmptyArray NonEmptyString) = unsafePartial $ fromJust $ NonEmptyArray.fromArray $ NonEmptyArray.mapMaybe (stripSuffix (Pattern ".ts")) filesNE
  -- log $ "filesNEWoutts" <> show filesNEWoutts
  let (filesNE' :: NonEmptyArray (NonEmptyArray NonEmptyString)) = unsafePartial $ fromJust $ NonEmptyArray.fromArray $ NonEmptyArray.mapMaybe (splitNE (Pattern "/")) filesNE
  -- log $ "filesNE'"
  traceM filesNE'
  filesNE'' :: NonEmptyArray PathInfo <- maybe (throwError $ error "Failed to parse path info") pure $ traverse toPathInfo filesNE'
  -- log $ "filesNE''"
  -- traceM filesNE''
  (outputs :: NonEmptyArray (Tuple PathInfo (Either Error J.Json))) <- parTraverse loadOutputFromPath filesNE''
  -- log $ "outputs"
  -- traceM outputs

  traverse_ (\e -> liftEffect $ Console.errorShow e) (leftsNE outputs)

  let validOutputs = rightsNE outputs :: Array (Tuple PathInfo J.Json)

  -- Step 2: Decode JSON into Javascript, capturing per-file decoding errors
  let
    (validOutputs' :: Array (Tuple PathInfo (Either CA.JsonDecodeError Javascript))) =
      map (\(pathInfo /\ json) -> (pathInfo /\ C.decode javascriptCodec json)) validOutputs

  -- Step 3: Print decoding errors for Javascript
  traverse_
    ( \(pathInfo /\ err) ->
        liftEffect $ Console.error $ "While decoding Javascript from " <> pathInfoToString pathInfo <> ":\n" <> C.printJsonDecodeError err
    )
    (lefts validOutputs')

  let (decoded :: Array (Tuple PathInfo Javascript)) = rights validOutputs'

  let
    f (pathInfo /\ json) = do
      jsToCode <- unsafePartial $ javascripDecoderForKey' (pathToKey pathInfo)
      pure $ pathInfo /\ jsToCode json

  validOutputs'' :: Array (PathInfo /\ Either JavascriptDecodeError CodeGenOutput) <- traverse f decoded

  traverse_
    ( \(pathInfo /\ err) ->
        liftEffect $ Console.error $ "While decoding Javascript from " <> pathInfoToString pathInfo <> ":\n" <> printJavascriptDecodeError err
    )
    (lefts validOutputs'')

  let (validOutputs'''' :: Array (PathInfo /\ CodeGenOutput)) = rights validOutputs''

  -- Step 4: Convert Javascript → JavascriptBetter, again capturing which file
  traverse_
    ( \({ languageName, dir, dir2, fileName } /\ code) -> do
        let
          dir_languageNameStr = NonEmptyString.toString languageName
          dir_dirStr = NonEmptyString.toString dir
          dir_dir2StrArray = maybe [] (\x -> [ NonEmptyString.toString x ]) dir2

          dirs = [ dir_languageNameStr, dir_dirStr ] <> dir_dir2StrArray
          dirsPascalized = map pascalCase dirs

          fileNameStr = stripExt (NonEmptyString.toString fileName)
          fileNameStrPascalized = pascalCase fileNameStr
          fileNameStrPascalized_withExt = fileNameStrPascalized <> ".purs"

          outDirAbs = Path.concat $ [ outputDir ] <> dirsPascalized
          pursFilePathAbs = Path.concat [ outDirAbs, fileNameStrPascalized_withExt ]

        mkdir' outDirAbs (mkdirOptionsDefault { recursive = true })

        case unsafePartial $ generateModule { moduleName: dirsPascalized <> [ fileNameStrPascalized ], fileName: fileNameStr } code of
          Nothing -> log $ "Ignoring: " <> NonEmptyString.toString fileName
          Just code' -> do
            result <- try do
              let rendered = printModule code'
              pure rendered

            case result of
              Left err -> log $ "Error generating module for " <> NonEmptyString.toString fileName <> ": " <> message err
              Right rendered -> writeTextFile UTF8 pursFilePathAbs rendered
    )
    validOutputs''''

  pure unit

generateModule
  :: Partial
  => { fileName :: String, moduleName :: Array String }
  -> CodeGenOutput
  -> Maybe (Module Void)
generateModule { moduleName, fileName } output =
  let
    varName = add_ifPurescriptKeyword fileName
  in
    case output of
      CodeGenOutput_Ignore ->
        Nothing

      CodeGenOutput_OneFunctionFileNamedWithGeneratorsSupplied code ->
        Just $ Tidy.Codegen.Monad.codegenModule (mkModuleName moduleName) do
          c <- code
          Tidy.Codegen.Monad.writeAndExport (declValue varName [ binderVar "generators" ] c)

      CodeGenOutput_OneFunctionFileNamed code ->
        Just $ Tidy.Codegen.Monad.codegenModule (mkModuleName moduleName) do
          c <- code
          Tidy.Codegen.Monad.writeAndExport (declValue varName [] c)

      CodeGenOutput_ManyFunctionExported pairs ->
        Just $ Tidy.Codegen.Monad.codegenModule (mkModuleName moduleName) do
          traverse_
            ( \(Tuple name gen) -> do
                expr <- gen
                let fnName = add_ifPurescriptKeyword (NonEmptyString.toString name)
                Tidy.Codegen.Monad.writeAndExport (declValue fnName [] expr)
            )
            (NonEmptyArray.toArray pairs)

mkModuleName :: Array String -> String
mkModuleName arr = "Fakerjs2.Locales." <> (String.joinWith "." $ map (\x -> unsafePartial $ pascalCase x) arr)
