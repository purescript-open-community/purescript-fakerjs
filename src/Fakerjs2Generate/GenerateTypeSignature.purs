module Fakerjs2Generate.GenerateTypeSignature where

import Prelude

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Map (Map)
import Data.Map as Map
import Data.String.Extra (pascalCase)
import Data.String.NonEmpty (NonEmptyString)
import Data.String.NonEmpty as NonEmptyString
import Data.Tuple (Tuple(..))
import PureScript.CST.Types as CST
import Tidy.Codegen (typeApp, typeCtor) as C
import Fakerjs2Generate.JavascriptBetter.Decode
import Fakerjs2Generate.Tree (PathInfo)
import Fakerjs2Generate.Utils (formatTypeSignature)

-- Generate CST.Type representation from JavascriptBetterMapValue
generateMapValueTypeSignature :: Partial => JavascriptBetterMapValue -> CST.Type Void
generateMapValueTypeSignature = case _ of
  JavascriptBetterMapValue_Null ->
    C.typeCtor "Null"
  JavascriptBetterMapValue_EmptyString ->
    C.typeCtor "String"
  JavascriptBetterMapValue_Int _ ->
    C.typeCtor "Int"
  JavascriptBetterMapValue_NonEmptyString _ ->
    C.typeCtor "NonEmptyString"
  JavascriptBetterMapValue_NonEmptyArray_NonEmptyString _ ->
    C.typeApp (C.typeCtor "NonEmptyArray") [ C.typeCtor "NonEmptyString" ]

-- Generate CST.Type representation from JavascriptBetter
generateTypeSignature :: Partial => JavascriptBetter -> CST.Type Void
generateTypeSignature = case _ of
  JavascriptBetter_Null ->
    C.typeCtor "Null"

  JavascriptBetter_NonEmptyArray_String _ ->
    C.typeApp (C.typeCtor "NonEmptyArray") [ C.typeCtor "String" ]

  JavascriptBetter_NonEmptyArray_NonEmptyString _ ->
    C.typeApp (C.typeCtor "NonEmptyArray") [ C.typeCtor "NonEmptyString" ]

  JavascriptBetter_NonEmptyArray_Int _ ->
    C.typeApp (C.typeCtor "NonEmptyArray") [ C.typeCtor "Int" ]

  JavascriptBetter_NonEmptyArray_Map_JavascriptBetterMapValue _ ->
    C.typeApp (C.typeCtor "NonEmptyArray")
      [ C.typeApp (C.typeCtor "Map")
          [ C.typeCtor "String"
          , C.typeCtor "JavascriptBetterMapValue"
          ]
      ]

  JavascriptBetter_NonEmptyArray_Map_NonEmptyString _ ->
    C.typeApp (C.typeCtor "NonEmptyArray")
      [ C.typeApp (C.typeCtor "Map")
          [ C.typeCtor "String"
          , C.typeCtor "NonEmptyString"
          ]
      ]

  JavascriptBetter_NonEmptyArray_Weighted_NonEmptyString _ ->
    C.typeApp (C.typeCtor "NonEmptyArray")
      [ C.typeApp (C.typeCtor "Weighted") [ C.typeCtor "NonEmptyString" ] ]

  JavascriptBetter_NonEmptyArray_NameCodeSymbolNumericCode _ ->
    C.typeApp (C.typeCtor "NonEmptyArray") [ C.typeCtor "NameCodeSymbolNumericCode" ]

  JavascriptBetter_Map_Map_NonEmptyString _ ->
    C.typeApp (C.typeCtor "Map")
      [ C.typeCtor "String"
      , C.typeApp (C.typeCtor "Map")
          [ C.typeCtor "String"
          , C.typeCtor "NonEmptyString"
          ]
      ]

  JavascriptBetter_Map_NonEmptyArray_Int _ ->
    C.typeApp (C.typeCtor "Map")
      [ C.typeCtor "String"
      , C.typeApp (C.typeCtor "NonEmptyArray") [ C.typeCtor "Int" ]
      ]

  JavascriptBetter_Map_NonEmptyArray_NonEmptyString _ ->
    C.typeApp (C.typeCtor "Map")
      [ C.typeCtor "String"
      , C.typeApp (C.typeCtor "NonEmptyArray") [ C.typeCtor "NonEmptyString" ]
      ]

  JavascriptBetter_Map_NonEmptyArray_Weighted _ ->
    C.typeApp (C.typeCtor "Map")
      [ C.typeCtor "String"
      , C.typeApp (C.typeCtor "NonEmptyArray")
          [ C.typeApp (C.typeCtor "Weighted") [ C.typeCtor "NonEmptyString" ] ]
      ]

  JavascriptBetter_Map_NonEmptyString _ ->
    C.typeApp (C.typeCtor "Map")
      [ C.typeCtor "String"
      , C.typeCtor "NonEmptyString"
      ]

  JavascriptBetter_Map_JavascriptBetterMapValue _ ->
    C.typeApp (C.typeCtor "Map")
      [ C.typeCtor "String"
      , C.typeCtor "JavascriptBetterMapValue"
      ]

  JavascriptBetter_Map_Extensions _ ->
    C.typeApp (C.typeCtor "Map")
      [ C.typeCtor "String"
      -- , C.typeRecord
      --     [ C.typeVar "extensions" /\ C.typeApp (C.typeCtor "NonEmptyArray") [ C.typeCtor "NonEmptyString" ]
      --     ]
      --     Nothing
      ]

printSignaturesOnly :: Partial => PathInfo -> JavascriptBetter -> Array String
printSignaturesOnly { fileName } output =
  let
    printType key val =
      let
        typeNameString = pascalCase (NonEmptyString.toString fileName) <> pascalCase key
        (typeSignature :: CST.Type Void) = generateTypeSignature val
        formatted = formatTypeSignature typeSignature
      in
        "type " <> typeNameString <> " = " <> formatted

  in
    case output of
      JavascriptBetter_Map_Map_NonEmptyString m ->
        map (\(Tuple key val) -> printType key (JavascriptBetter_Map_NonEmptyString val))
          (Map.toUnfoldable m :: Array (Tuple String (Map String NonEmptyString)))

      JavascriptBetter_Map_NonEmptyArray_Int m ->
        map (\(Tuple key val) -> printType key (JavascriptBetter_NonEmptyArray_Int val))
          (Map.toUnfoldable m :: Array (Tuple String (NonEmptyArray Int)))

      JavascriptBetter_Map_NonEmptyArray_NonEmptyString m ->
        map (\(Tuple key val) -> printType key (JavascriptBetter_NonEmptyArray_NonEmptyString val))
          (Map.toUnfoldable m :: Array (Tuple String (NonEmptyArray NonEmptyString)))

      JavascriptBetter_Map_NonEmptyArray_Weighted m ->
        map (\(Tuple key val) -> printType key (JavascriptBetter_NonEmptyArray_Weighted_NonEmptyString val))
          (Map.toUnfoldable m :: Array (Tuple String (NonEmptyArray (Weighted NonEmptyString))))

      _ ->
        let
          typeNameString = pascalCase (NonEmptyString.toString fileName)
          typeSignature = generateTypeSignature output
          formatted = formatTypeSignature typeSignature
        in
          [ "type " <> typeNameString <> " = " <> formatted ]
