module Fakerjs2Generate.GenerateModule where

import Prelude

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Array.NonEmpty as NonEmptyArray
import Data.Map (Map)
import Data.Map as Map
import Data.String.Extra (pascalCase)
import Data.String.NonEmpty (NonEmptyString)
import Data.String.NonEmpty as NonEmptyString
import Data.Traversable (for_, traverse)
import Data.Tuple (Tuple(..))
import Fakerjs2Generate.JavascriptBetter (JavascriptBetter(..), JavascriptBetterMapValue(..), Weighted)
import Fakerjs2Generate.Tree (PathInfo)
import Fakerjs2Generate.Utils (add_ifPurescriptKeyword, importFakerjs2Type, importGenType, importNonEmptyArrayType, importNonEmptyStringType, importOneOfFunction, importUnsafeCoerceInd, importUnsafeFromString, mkModuleName)
import PureScript.CST.Types (Expr, Ident, Module, Proper, QualifiedName)
import Tidy.Codegen (declSignature, declValue, exprApp, exprArray, exprIdent, exprInt, exprRecord, exprString, exprTyped, typeApp, typeArrow, typeCtor)
import Tidy.Codegen.Monad (Codegen, exporting, write)
import Tidy.Codegen.Monad as Tidy.Codegen.Monad

generateExprForMapValue :: Partial => JavascriptBetterMapValue -> Codegen Void (Expr Void)
generateExprForMapValue = case _ of
  JavascriptBetterMapValue_Null -> pure $ exprString "null"
  JavascriptBetterMapValue_EmptyString -> pure $ exprString ""
  JavascriptBetterMapValue_Int i -> pure $ exprInt i
  JavascriptBetterMapValue_NonEmptyString nes -> do
    unsafeFromString <- importUnsafeFromString
    pure $ exprApp (exprIdent unsafeFromString) [ exprString $ NonEmptyString.toString nes ]
  JavascriptBetterMapValue_NonEmptyArray_NonEmptyString arr -> do
    nonEmptyStringType <- importNonEmptyStringType
    nonEmptyArrayType <- importNonEmptyArrayType
    unsafeCoerceInd <- importUnsafeCoerceInd
    pure $ genNonEmptyStringArray unsafeCoerceInd nonEmptyArrayType nonEmptyStringType arr

genNonEmptyStringArray :: Partial => QualifiedName Ident -> QualifiedName Proper -> QualifiedName Proper -> NonEmptyArray NonEmptyString -> Expr Void
genNonEmptyStringArray unsafeCoerceInd nonEmptyArrayType nonEmptyStringType arr =
  let
    stringLiterals = map (exprString <<< NonEmptyString.toString) (NonEmptyArray.toArray arr)
    arrayExpr = exprArray stringLiterals
    coercion = exprTyped
      (exprIdent unsafeCoerceInd)
      ( typeArrow
          [ typeApp (typeCtor "Array") [ typeCtor "String" ] ]
          (typeApp (typeCtor nonEmptyArrayType) [ typeCtor nonEmptyStringType ])
      )
  in
    exprApp coercion [ arrayExpr ]

genNonEmptyIntArray :: Partial => QualifiedName Ident -> QualifiedName Proper -> NonEmptyArray Int -> Expr Void
genNonEmptyIntArray unsafeCoerceInd nonEmptyArrayType arr =
  let
    stringLiterals = map (exprInt) (NonEmptyArray.toArray arr)
    arrayExpr = exprArray stringLiterals
    coercion = exprTyped
      (exprIdent unsafeCoerceInd)
      ( typeArrow
          [ typeApp (typeCtor "Array") [ typeCtor "Int" ] ]
          (typeApp (typeCtor nonEmptyArrayType) [ typeCtor "Int" ])
      )
  in
    exprApp coercion [ arrayExpr ]

-- Helper function for generating weighted values
genWeightedValue :: QualifiedName Ident -> NonEmptyString -> Int -> Expr Void
genWeightedValue unsafeFromStringInd value weight = do
  let valueExpr = exprApp (exprIdent unsafeFromStringInd) [ exprString $ NonEmptyString.toString value ]
  exprRecord
    [ Tuple "value" valueExpr
    , Tuple "weight" (exprInt weight)
    ]

genJavascriptBetterExpr :: Partial => JavascriptBetter -> Codegen Void (Expr Void)
genJavascriptBetterExpr = case _ of
  JavascriptBetter_Null -> pure $ exprString "null"

  JavascriptBetter_NonEmptyArray_String arr -> pure $ exprArray $ map exprString (NonEmptyArray.toArray arr)

  JavascriptBetter_NonEmptyArray_NonEmptyString arr -> do
    nonEmptyStringType <- importNonEmptyStringType
    nonEmptyArrayType <- importNonEmptyArrayType
    unsafeCoerceInd <- importUnsafeCoerceInd
    pure $ genNonEmptyStringArray unsafeCoerceInd nonEmptyArrayType nonEmptyStringType arr

  JavascriptBetter_NonEmptyArray_Int arr -> do
    nonEmptyArrayType <- importNonEmptyArrayType
    unsafeCoerceInd <- importUnsafeCoerceInd
    pure $ genNonEmptyIntArray unsafeCoerceInd nonEmptyArrayType arr

  JavascriptBetter_NonEmptyArray_Map_JavascriptBetterMapValue arr -> do
    arrExprs <- traverse
      ( \m -> do
          (m' :: Array (Tuple String (Expr Void))) <- Map.toUnfoldableUnordered <$> traverse generateExprForMapValue m
          pure $ exprRecord m'
      )
      (NonEmptyArray.toArray arr)
    pure $ exprArray arrExprs

  JavascriptBetter_NonEmptyArray_Map_NonEmptyString arr -> do
    unsafeFromString <- importUnsafeFromString
    arrExprs <- traverse
      ( \m -> do
          (m' :: Array (Tuple String (Expr Void))) <- Map.toUnfoldableUnordered <$>
            traverse
              (\nes -> pure $ exprApp (exprIdent unsafeFromString) [ exprString $ NonEmptyString.toString nes ])
              m
          pure $ exprRecord m'
      )
      (NonEmptyArray.toArray arr)
    pure $ exprArray arrExprs

  JavascriptBetter_NonEmptyArray_Weighted_NonEmptyString arr -> do
    unsafeFromString <- importUnsafeFromString
    pure $ exprArray $
      map
        ( \{ value, weight } ->
            exprRecord
              [ Tuple "value" $ exprApp (exprIdent unsafeFromString) [ exprString $ NonEmptyString.toString value ]
              , Tuple "weight" (exprInt weight)
              ]
        )
        (NonEmptyArray.toArray arr)

  JavascriptBetter_Map_Map_NonEmptyString m -> do
    unsafeFromString <- importUnsafeFromString
    (m' :: Array (Tuple String (Expr Void))) <- Map.toUnfoldableUnordered <$>
      traverse
        ( \innerMap -> do
            (innerMap' :: Array (Tuple String (Expr Void))) <- Map.toUnfoldableUnordered <$>
              traverse
                (\nes -> pure $ exprApp (exprIdent unsafeFromString) [ exprString $ NonEmptyString.toString nes ])
                innerMap
            pure $ exprRecord innerMap'
        )
        m
    pure $ exprRecord m'

  JavascriptBetter_Map_NonEmptyArray_Int m -> do
    nonEmptyArrayType <- importNonEmptyArrayType
    unsafeCoerceInd <- importUnsafeCoerceInd
    (m' :: Array (Tuple String (Expr Void))) <- Map.toUnfoldableUnordered <$>
      traverse
        (\arr -> pure $ genNonEmptyIntArray unsafeCoerceInd nonEmptyArrayType arr)
        m
    pure $ exprRecord m'

  JavascriptBetter_Map_NonEmptyArray_NonEmptyString m -> do
    nonEmptyStringType <- importNonEmptyStringType
    nonEmptyArrayType <- importNonEmptyArrayType
    unsafeCoerceInd <- importUnsafeCoerceInd
    (m' :: Array (Tuple String (Expr Void))) <- Map.toUnfoldableUnordered <$>
      traverse
        (\arr -> pure $ genNonEmptyStringArray unsafeCoerceInd nonEmptyArrayType nonEmptyStringType arr)
        m
    pure $ exprRecord m'

  JavascriptBetter_Map_NonEmptyArray_Weighted m -> do
    unsafeFromString <- importUnsafeFromString
    (m' :: Array (Tuple String (Expr Void))) <- Map.toUnfoldableUnordered <$>
      traverse
        ( \arr -> pure $ exprArray $
            map
              ( \{ value, weight } ->
                  exprRecord
                    [ Tuple "value" $ exprApp (exprIdent unsafeFromString) [ exprString $ NonEmptyString.toString value ]
                    , Tuple "weight" (exprInt weight)
                    ]
              )
              (NonEmptyArray.toArray arr)
        )
        m
    pure $ exprRecord m'

  JavascriptBetter_Map_NonEmptyString m -> do
    unsafeFromString <- importUnsafeFromString
    (m' :: Array (Tuple String (Expr Void))) <- Map.toUnfoldableUnordered <$>
      traverse
        (\nes -> pure $ exprApp (exprIdent unsafeFromString) [ exprString $ NonEmptyString.toString nes ])
        m
    pure $ exprRecord m'

  JavascriptBetter_Map_JavascriptBetterMapValue m -> do
    (m' :: Array (Tuple String (Expr Void))) <- Map.toUnfoldableUnordered <$> traverse generateExprForMapValue m
    pure $ exprRecord m'

  JavascriptBetter_NonEmptyArray_NameCodeSymbolNumericCode arr -> do
    unsafeFromString <- importUnsafeFromString
    pure $ exprArray $
      map
        ( \{ name, code, symbol, numericCode } ->
            exprRecord
              [ Tuple "name" $ exprApp (exprIdent unsafeFromString) [ exprString $ NonEmptyString.toString name ]
              , Tuple "code" $ exprApp (exprIdent unsafeFromString) [ exprString $ NonEmptyString.toString code ]
              , Tuple "symbol" $ exprString symbol
              , Tuple "numericCode" $ exprApp (exprIdent unsafeFromString) [ exprString $ NonEmptyString.toString numericCode ]
              ]
        )
        (NonEmptyArray.toArray arr)

  JavascriptBetter_Map_Extensions m -> do
    unsafeFromString <- importUnsafeFromString
    (m' :: Array (Tuple String (Expr Void))) <- Map.toUnfoldableUnordered <$>
      traverse
        ( \{ extensions } -> do
            let
              extensionsExpr = exprArray $
                map
                  (\nes -> exprApp (exprIdent unsafeFromString) [ exprString $ NonEmptyString.toString nes ])
                  (NonEmptyArray.toArray extensions)
            pure $ exprRecord [ Tuple "extensions" extensionsExpr ]
        )
        m
    pure $ exprRecord m'

generateModule :: Partial => PathInfo -> JavascriptBetter -> Module Void
generateModule { fullPath, fileName } output =
  Tidy.Codegen.Monad.codegenModule (mkModuleName $ fullPath <> [ fileName ]) do
    -- Tidy.Codegen.Monad.importOpen "Prelude"
    exporting do
      let
        writeExprFromKeyedMap :: forall a. (a -> Codegen Void (Expr Void)) -> Map String a -> Codegen Void Unit
        writeExprFromKeyedMap f m = for_ (Map.toUnfoldable m :: Array (Tuple String a)) \(Tuple key val) -> do
          expr <- f val
          let typeNameString = (pascalCase $ NonEmptyString.toString fileName) <> (pascalCase key)
          typeName <- importFakerjs2Type typeNameString
          -- traceM $ "type " <> typeNameString <> " = " <> (?a $ generateTypeSignature)
          let varName = add_ifPurescriptKeyword key
          write $ declSignature varName (typeCtor typeName)
          write $ declValue varName [] expr

        writeExprFromKeyedMapWeighted
          :: Map String (NonEmptyArray (Weighted NonEmptyString))
          -> Codegen Void Unit
        writeExprFromKeyedMapWeighted m = do
          unsafeFromString <- importUnsafeFromString
          let
            toExpr arr =
              pure $ exprArray $
                map
                  ( \{ value, weight } ->
                      exprRecord
                        [ Tuple "value" $ exprApp (exprIdent unsafeFromString) [ exprString $ NonEmptyString.toString value ]
                        , Tuple "weight" (exprInt weight)
                        ]
                  )
                  (NonEmptyArray.toArray arr)
          writeExprFromKeyedMap toExpr m

      case output of
        JavascriptBetter_Map_Map_NonEmptyString m -> do
          unsafeFromString <- importUnsafeFromString
          let
            toExpr innerMap = do
              (innerMap' :: Array (Tuple String (Expr Void))) <- Map.toUnfoldableUnordered <$>
                traverse
                  (\nes -> pure $ exprApp (exprIdent unsafeFromString) [ exprString $ NonEmptyString.toString nes ])
                  innerMap
              pure $ exprRecord innerMap'
          writeExprFromKeyedMap toExpr m

        JavascriptBetter_Map_NonEmptyArray_Int m -> do
          nonEmptyArrayType <- importNonEmptyArrayType
          unsafeCoerceInd <- importUnsafeCoerceInd
          writeExprFromKeyedMap (pure <<< genNonEmptyIntArray unsafeCoerceInd nonEmptyArrayType) m

        JavascriptBetter_Map_NonEmptyArray_NonEmptyString m -> do
          nonEmptyStringType <- importNonEmptyStringType
          nonEmptyArrayType <- importNonEmptyArrayType
          unsafeCoerceInd <- importUnsafeCoerceInd
          writeExprFromKeyedMap (pure <<< genNonEmptyStringArray unsafeCoerceInd nonEmptyArrayType nonEmptyStringType) m

        JavascriptBetter_Map_NonEmptyArray_Weighted m -> writeExprFromKeyedMapWeighted m

        -- /home/srghma/projects/faker/src/locales/en_CA/location/postcode_by_state.ts
        -- JavascriptBetter_Map_NonEmptyString m -> do
        --   unsafeFromString <- importUnsafeFromString
        --   writeExprFromKeyedMap (\nes -> pure $ exprApp (exprIdent unsafeFromString) [ exprString $ NonEmptyString.toString nes ]) m

        -- /home/srghma/projects/faker/src/locales/en_US/location/postcode_by_state.ts
        -- JavascriptBetter_Map_JavascriptBetterMapValue m -> writeExprFromKeyedMap generateExprForMapValue m

        _ -> do
          -- nonEmptyStringType <- importNonEmptyStringType
          -- genType <- importGenType
          -- oneOfFunction <- importOneOfFunction
          outputExpr' <- genJavascriptBetterExpr output
          typeName <- importFakerjs2Type $ pascalCase $ NonEmptyString.toString fileName
          -- traceM $ pascalCase $ NonEmptyString.toString fileName
          let varName = add_ifPurescriptKeyword $ NonEmptyString.toString fileName
          write $ declSignature varName (typeCtor typeName)
          write $ declValue varName [] outputExpr'
-- write $ declSignature (varName <> "Gen") (typeApp (typeCtor genType) [ typeCtor nonEmptyStringType ])
-- write $ declValue (varName <> "Gen") [] (exprApp (exprIdent oneOfFunction) [ exprIdent varName ])
