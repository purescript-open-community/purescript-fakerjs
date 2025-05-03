module Fakerjs2Generate where

import Fakerjs2Generate.Javascript
import Prelude

import Control.Monad.Error.Class (try)
import Control.Parallel (parTraverse)
import Data.Argonaut.Core as J
import Data.Array as Array
import Data.Array.NonEmpty (NonEmptyArray)
import Data.Array.NonEmpty as NonEmptyArray
import Data.Codec.Argonaut (decode, printJsonDecodeError) as C
import Data.Codec.Argonaut.Common (JsonDecodeError) as CA
import Data.Either (Either(..))
import Data.Foldable (all)
import Data.Maybe (Maybe(..), fromJust)
import Data.Set as Set
import Data.Set.NonEmpty (NonEmptySet)
import Data.Set.NonEmpty as NonEmptySet
import Data.String (Pattern(..), stripPrefix)
import Data.String.NonEmpty (NonEmptyString, stripSuffix)
import Data.String.NonEmpty as NonEmptyString
import Data.Traversable (traverse, traverse_)
import Data.Tuple (Tuple(..))
import Data.Tuple.Nested ((/\))
import Effect (Effect)
import Effect.Aff (Aff, Error, launchAff_)
import Effect.Class (liftEffect)
import Effect.Class.Console (log)
import Effect.Console as Console
import Effect.Exception (error, message)
import Fakerjs2Generate.GenerateModule (generateModule)
import Fakerjs2Generate.GenerateTypeSignature (printSignaturesOnly)
import Fakerjs2Generate.JavascriptBetter.Decode
import Fakerjs2Generate.JavascriptBetter.JavascriptError
import Fakerjs2Generate.Load (loadPathDefault)
import Fakerjs2Generate.Tree (PathInfo, Tree, buildTrees, collectLeaves, pathInfoToString)
import Fakerjs2Generate.Utils (files, lefts, pascalCaseNE, rights, splitNE)
import Node.Encoding (Encoding(..))
import Node.FS.Aff (globDirent', mkdir', writeTextFile)
import Node.FS.Dirent (Dirent, DirentNameString, DirentType(..))
import Node.FS.Dirent as Dirent
import Node.FS.Options (mkdirOptionsDefault)
import Node.Path as Path
import Partial.Unsafe (unsafePartial)
import Tidy.Codegen (printModule)

inputDir :: String
inputDir = "/home/srghma/projects/faker/src/locales"

outputDir :: String
outputDir = "/home/srghma/projects/purescript-fakerjs/src/Fakerjs2/Locales"

-----------------------------------------------------------

loadOutputFromPath :: PathInfo -> Aff (Tuple PathInfo (Either Error J.Json))
loadOutputFromPath pathInfo@{ fullPath, fileName } = do
  let inputFile = Path.concat $ [ inputDir ] <> ((map NonEmptyString.toString fullPath) <> [ NonEmptyString.toString fileName <> ".ts" ])
  (output :: Either Error J.Json) <- try $ loadPathDefault inputFile
  pure $ Tuple pathInfo output

writeLeafFiles :: Tuple PathInfo JavascriptBetter -> Aff Unit
writeLeafFiles (Tuple pathInfo@{ fullPath, fileName } output) = do
  -- liftEffect $ logShow { fullPath, fileName }
  let outDir = Path.concat $ [ outputDir ] <> map NonEmptyString.toString (map (\x -> unsafePartial $ pascalCaseNE x) fullPath)
  let pursFilePath = Path.concat [ outDir, NonEmptyString.toString (unsafePartial $ pascalCaseNE fileName) <> ".purs" ]
  mkdir' outDir (mkdirOptionsDefault { recursive = true })
  -- let files = [ NonEmptyString.toString fileName ] -- expand if needed
  -- liftEffect $ logShow pursFilePath
  case output of
    JavascriptBetter_Null -> pure unit
    _ -> do
      (a :: Either Error String) <- try do
        let rendered = printModule (unsafePartial $ generateModule pathInfo output)
        pure rendered
      case a of
        Left err -> log $ "Error generating module for " <> show fileName <> ": " <> message err
        Right rendered -> writeTextFile UTF8 pursFilePath rendered

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

main :: Effect Unit
main = launchAff_ $ do
  (files :: Array String) <- map toPath <$> globDirent' [ "**/*.ts" ]
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
  let (filesNEWoutts :: NonEmptyArray NonEmptyString) = unsafePartial $ fromJust $ NonEmptyArray.fromArray $ NonEmptyArray.mapMaybe (stripSuffix (Pattern ".ts")) filesNE
  -- log $ "filesNEWoutts" <> show filesNEWoutts
  let (filesNE' :: NonEmptyArray (NonEmptyArray NonEmptyString)) = unsafePartial $ fromJust $ NonEmptyArray.fromArray $ NonEmptyArray.mapMaybe (splitNE (Pattern "/")) filesNEWoutts
  -- log $ "filesNE'"
  -- liftEffect $ logShow filesNE'
  let (trees :: NonEmptySet Tree) = buildTrees filesNE'
  -- let (trees' :: NonEmptySet Tree) = NonEmptySet.map (mapTree pascalCaseNE pascalCaseNE) trees
  -- log $ showTrees trees'
  let (leaves :: Array PathInfo) = NonEmptySet.toUnfoldable trees # Array.concatMap (collectLeaves [])

  -- Optional: log for debugging
  -- liftEffect $ logShow leaves

  -- Write files
  (outputs :: Array (Tuple PathInfo (Either Error J.Json))) <- parTraverse loadOutputFromPath leaves
  -- -- Step 2: Filter only the Right values

  -- Step 1: Print all errors from loading files
  traverse_ (\e -> liftEffect $ Console.errorShow e) (lefts outputs)
  let validOutputs = rights outputs :: Array (Tuple PathInfo J.Json)

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
    (validOutputs'' :: Array (Tuple PathInfo (Either JavascriptDecodeError JavascriptBetter))) =
      map (\(pathInfo /\ json) -> (pathInfo /\ decodeBetter json)) decoded

  -- Step 3: Print decoding errors for Javascript
  traverse_
    ( \(pathInfo /\ err) ->
        liftEffect $ Console.error $ "While decoding Javascript from " <> pathInfoToString pathInfo <> ":\n" <> printJavascriptDecodeError err
    )
    (lefts validOutputs'')

  -- Step 4: Convert Javascript → JavascriptBetter, again capturing which file
  (finalOutputs' :: Array (Tuple PathInfo (Either Error JavascriptBetter))) <-
    traverse
      ( \(pathInfo /\ js) -> do
          let
            res = case decodeBetter js of
              Left err ->
                pathInfo /\ Left (error $ "While decoding JavascriptBetter from " <> pathInfoToString pathInfo <> ": " <> printJavascriptDecodeError err)
              Right better ->
                pathInfo /\ Right better
          pure res
      )
      decoded

  -- Step 5: Print decoding errors for JavascriptBetter
  traverse_ (\(e :: Tuple _ _) -> liftEffect $ Console.errorShow e) (lefts finalOutputs' :: Array (Tuple PathInfo Error))

  -- Step 6: Filter successful decodings
  let (finalOutputs :: Array (Tuple PathInfo JavascriptBetter)) = rights finalOutputs'

  -- let
  --   (allSignatures :: Array String) =
  --     finalOutputs
  --       # Array.concatMap (\(Tuple pathInfo output) -> unsafePartial $ printSignaturesOnly pathInfo output)
  --       # Set.fromFoldable
  --       # Set.toUnfoldable

  -- log $ String.joinWith "\n" allSignatures
  traverse_ writeLeafFiles finalOutputs

-- Step 3: Filter successful decodings
-- let (finalOutputs :: Array (Tuple PathInfo JavascriptBetter)) = rights finalOutputs'
