module Fakerjs2Generate.JavascriptBetter.Encode.KnownTypeName where

import Fakerjs2.Helpers.FromRegExp.Encoder.Imports
import Fakerjs2Generate.JavascriptBetter.Encode.Imports
import Fakerjs2Generate.JavascriptBetter.Encode.Utils
import Prelude
import Prelude

import Data.Array as Array
import Data.Array.NonEmpty (NonEmptyArray)
import Data.Array.NonEmpty as NonEmptyArray
import Data.Either (Either(..))
import Data.Map (Map)
import Data.Map as Map
import Data.Maybe (Maybe(..))
import Data.String.NonEmpty (NonEmptyString)
import Data.String.NonEmpty as NonEmptyString
import Data.Symbol (class IsSymbol)
import Data.Traversable (traverse)
import Data.Tuple (Tuple(..))
import Fakerjs2.Helpers.FromRegExp.Types (TypeSafePattern)
import Fakerjs2Generate.JavascriptBetter.Types (ReplaceSymbols, Weighted, WithFunctionCall)
import Fakerjs2Generate.Parser.ReplaceSymbolsPattern (ReplaceSymbolsPattern)
import Prim.Row as Row
import Prim.RowList as RL
import PureScript.CST.Types (Expr)
import PureScript.CST.Types as CST
import Record as Record
import Test.QuickCheck.Gen (Gen)
import Tidy.Codegen (exprApp, exprArray, exprCtor, exprIdent, exprInt, exprRecord, exprString, exprTyped, typeApp, typeArrow, typeCtor, typeRecord)
import Tidy.Codegen.Monad (Codegen, CodegenT)
import Type.Prelude as Symbol
import Type.Proxy (Proxy(..))
import Unsafe.Coerce (unsafeCoerce)

-- First, define helper functions to create row tuples
class KnownTypeNameRowList :: RL.RowList Type -> Constraint
class KnownTypeNameRowList rl where
  knownTypeNameRowList_Runtime_makeTuples :: forall e m. Monad m => Partial => CodegenT e m (Array (Tuple String (CST.Type Void)))
  knownTypeNameRowList_Expected_makeTuples :: forall e m. Monad m => Partial => CodegenT e m (Array (Tuple String (CST.Type Void)))

-- Base case for empty rows
instance KnownTypeNameRowList RL.Nil where
  knownTypeNameRowList_Runtime_makeTuples = pure []
  knownTypeNameRowList_Expected_makeTuples = pure []

-- Recursive case for non-empty rows
instance (IsSymbol sym, KnownTypeName ty, KnownTypeNameRowList tail) => KnownTypeNameRowList (RL.Cons sym ty tail) where
  knownTypeNameRowList_Runtime_makeTuples = do
    let key = Symbol.reflectSymbol (Proxy :: Proxy sym)
    valueTypeRuntime <- knownTypeName_importInnerTypeRuntime_getProper @ty
    tailTuples <- knownTypeNameRowList_Runtime_makeTuples @tail
    pure $ Array.cons (Tuple key valueTypeRuntime) tailTuples

  knownTypeNameRowList_Expected_makeTuples = do
    let key = Symbol.reflectSymbol (Proxy :: Proxy sym)
    valueTypeExpected <- knownTypeName_importInnerTypeExpected_getProper @ty
    tailTuples <- knownTypeNameRowList_Expected_makeTuples @tail
    pure $ Array.cons (Tuple key valueTypeExpected) tailTuples

class KnownTypeName :: forall k. k -> Constraint
class KnownTypeName t where
  knownTypeName_importInnerTypeRuntime_getProper :: forall e1328 m1329. Monad m1329 => Partial => CodegenT e1328 m1329 (CST.Type Void)
  knownTypeName_importInnerTypeExpected_getProper :: forall e1328 m1329. Monad m1329 => Partial => CodegenT e1328 m1329 (CST.Type Void)

-- Now define the instance for Record
instance (RL.RowToList row rl, KnownTypeNameRowList rl) => KnownTypeName (Record row) where
  knownTypeName_importInnerTypeRuntime_getProper = do
    (tuples :: Array (Tuple String (CST.Type Void))) <- knownTypeNameRowList_Runtime_makeTuples @rl
    pure $ typeRecord tuples Nothing

  knownTypeName_importInnerTypeExpected_getProper = do
    tuples <- knownTypeNameRowList_Expected_makeTuples @rl
    pure $ typeRecord tuples Nothing

instance KnownTypeName NonEmptyString where
  knownTypeName_importInnerTypeRuntime_getProper = pure $ typeCtor "String"
  knownTypeName_importInnerTypeExpected_getProper = importNonEmptyStringType >>= (pure <<< typeCtor)

instance KnownTypeName (WithFunctionCall (ReplaceSymbols NonEmptyString)) where
  knownTypeName_importInnerTypeRuntime_getProper = pure $ typeCtor "String"
  knownTypeName_importInnerTypeExpected_getProper = importNonEmptyStringType >>= (pure <<< typeCtor)

instance KnownTypeName (ReplaceSymbols NonEmptyString) where
  knownTypeName_importInnerTypeRuntime_getProper = pure $ typeCtor "String"
  knownTypeName_importInnerTypeExpected_getProper = importNonEmptyStringType >>= (pure <<< typeCtor)

instance KnownTypeName (WithFunctionCall NonEmptyString) where
  knownTypeName_importInnerTypeRuntime_getProper = pure $ typeCtor "String"
  knownTypeName_importInnerTypeExpected_getProper = importNonEmptyStringType >>= (pure <<< typeCtor)

instance KnownTypeName a => KnownTypeName (Maybe a) where
  knownTypeName_importInnerTypeRuntime_getProper = pure $ typeCtor "String"
  knownTypeName_importInnerTypeExpected_getProper = importNonEmptyStringType >>= (pure <<< typeCtor)

instance KnownTypeName a => KnownTypeName (NonEmptyArray a) where
  knownTypeName_importInnerTypeRuntime_getProper = pure $ typeCtor "Array"
  knownTypeName_importInnerTypeExpected_getProper = importNonEmptyStringType >>= (pure <<< typeCtor)

instance KnownTypeName a => KnownTypeName (Map String a) where
  knownTypeName_importInnerTypeRuntime_getProper = pure $ typeCtor "String"
  knownTypeName_importInnerTypeExpected_getProper = importNonEmptyStringType >>= (pure <<< typeCtor)

instance KnownTypeName a => KnownTypeName (Map NonEmptyString a) where
  knownTypeName_importInnerTypeRuntime_getProper = pure $ typeCtor "String"
  knownTypeName_importInnerTypeExpected_getProper = importNonEmptyStringType >>= (pure <<< typeCtor)

instance (KnownTypeName a, KnownTypeName b) => KnownTypeName (Either a b) where
  knownTypeName_importInnerTypeRuntime_getProper = pure $ typeCtor "String"
  knownTypeName_importInnerTypeExpected_getProper = importNonEmptyStringType >>= (pure <<< typeCtor)

instance KnownTypeName String where
  knownTypeName_importInnerTypeRuntime_getProper = pure $ typeCtor "String"
  knownTypeName_importInnerTypeExpected_getProper = pure $ typeCtor "String"

instance KnownTypeName Char where
  knownTypeName_importInnerTypeRuntime_getProper = pure $ typeCtor "Char"
  knownTypeName_importInnerTypeExpected_getProper = pure $ typeCtor "Char"

instance (KnownTypeName a, KnownTypeName b) => KnownTypeName (Tuple a b) where
  knownTypeName_importInnerTypeRuntime_getProper = pure $ typeCtor "Char"
  knownTypeName_importInnerTypeExpected_getProper = pure $ typeCtor "Char"

instance KnownTypeName Int where
  knownTypeName_importInnerTypeRuntime_getProper = pure $ typeCtor "Int"
  knownTypeName_importInnerTypeExpected_getProper = pure $ typeCtor "Int"

instance KnownTypeName TypeSafePattern where
  knownTypeName_importInnerTypeRuntime_getProper = importTypeSafePatternType >>= (pure <<< typeCtor)
  knownTypeName_importInnerTypeExpected_getProper = importTypeSafePatternType >>= (pure <<< typeCtor)

instance KnownTypeName ReplaceSymbolsPattern where
  knownTypeName_importInnerTypeRuntime_getProper = do
    nonEmptyArrayType <- importNonEmptyArrayType
    x <- importTypeSafePatternType
    pure $ typeApp (typeCtor nonEmptyArrayType) [ typeCtor x ]
  knownTypeName_importInnerTypeExpected_getProper = do
    nonEmptyArrayType <- importNonEmptyArrayType
    x <- importTypeSafePatternType
    pure $ typeApp (typeCtor nonEmptyArrayType) [ typeCtor x ]

instance KnownTypeName (Gen String) where
  knownTypeName_importInnerTypeRuntime_getProper = do
    genType <- importGenType
    pure $ typeApp (typeCtor genType) [ typeCtor "String" ]
  knownTypeName_importInnerTypeExpected_getProper = do
    genType <- importGenType
    pure $ typeApp (typeCtor genType) [ typeCtor "String" ]

instance KnownTypeName a => KnownTypeName (Weighted a) where
  knownTypeName_importInnerTypeRuntime_getProper = do
    valueType <- knownTypeName_importInnerTypeRuntime_getProper @a
    w <- importFakerjs2Weighted
    pure $ typeApp (typeCtor w) [ valueType ]
  knownTypeName_importInnerTypeExpected_getProper = do
    valueType <- knownTypeName_importInnerTypeExpected_getProper @a
    w <- importFakerjs2Weighted
    pure $ typeApp (typeCtor w) [ valueType ]
