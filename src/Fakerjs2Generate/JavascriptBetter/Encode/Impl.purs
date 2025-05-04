module Fakerjs2Generate.JavascriptBetter.Encode.Impl where

import Fakerjs2Generate.JavascriptBetter.Encode.Utils
import Fakerjs2Generate.JavascriptBetter.Types
import Prelude

import Data.Array as Array
import Data.Array.NonEmpty (NonEmptyArray)
import Data.Array.NonEmpty as NonEmptyArray
import Data.Bifunctor (lmap)
import Data.Either (Either(..))
import Data.Map (Map)
import Data.Map as Map
import Data.Maybe (Maybe(..))
import Data.Set as Set
import Data.String.NonEmpty (NonEmptyString)
import Data.String.NonEmpty as NonEmptyString
import Data.Symbol (class IsSymbol)
import Data.Symbol (class IsSymbol)
import Data.Traversable (traverse)
import Data.Tuple (Tuple(..), fst)
import Data.Tuple.Nested (type (/\), (/\))
import Fakerjs2Generate.Javascript (Javascript(..))
import Foreign.Object as Object
import Prim.Row as Row
import Prim.Row as Row
import Prim.RowList as RL
import Prim.RowList as RL
import PureScript.CST.Types (Expr, Ident, Module, Proper, QualifiedName)
import PureScript.CST.Types as CST
import Record as Record
import Record.ExtraSrghma
import Safe.Coerce (coerce)
import Tidy.Codegen (declSignature, declValue, exprApp, exprArray, exprCtor, exprIdent, exprInt, exprRecord, exprString, exprTyped, typeApp, typeArrow, typeCtor, typeRow, typeWildcard)
import Tidy.Codegen (typeApp, typeCtor, typeVar, typeRow, typeRecord)
import Tidy.Codegen.Class (toQualifiedName)
import Tidy.Codegen.Monad (Codegen, CodegenT, exporting, write)
import Tidy.Codegen.Monad as Tidy.Codegen.Monad
import Type.Prelude as Symbol
import Type.Prelude as Symbol
import Type.Proxy (Proxy(..))
import Type.Proxy (Proxy(..))
import Unsafe.Coerce (unsafeCoerce)
import Record.Builder (Builder)
import Record.Builder as Builder

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

instance KnownTypeName Int where
  knownTypeName_importInnerTypeRuntime_getProper = pure $ typeCtor "Int"
  knownTypeName_importInnerTypeExpected_getProper = pure $ typeCtor "Int"

instance KnownTypeName a => KnownTypeName (Weighted a) where
  knownTypeName_importInnerTypeRuntime_getProper = do
    valueType <- knownTypeName_importInnerTypeRuntime_getProper @a
    w <- importFakerjs2Weighted
    pure $ typeApp (typeCtor w) [ valueType ]
  knownTypeName_importInnerTypeExpected_getProper = do
    valueType <- knownTypeName_importInnerTypeExpected_getProper @a
    w <- importFakerjs2Weighted
    pure $ typeApp (typeCtor w) [ valueType ]

---------------------------------
type Encoder a = a -> Codegen Void (Expr Void)

-- | Encode a non-empty string
encodeNES :: Partial => Encoder NonEmptyString
encodeNES nes = encodeString (NonEmptyString.toString nes)

-- encodeNES nes = do
--   unsafeFromString <- importUnsafeFromString
--   pure $ exprApp (exprIdent unsafeFromString) [ exprString $ NonEmptyString.toString nes ]

-- | Encode an integer
encodeInt :: Partial => Encoder Int
encodeInt = pure <<< exprInt

-- | Encode a non-empty array using the provided encoder for its elements
encodeNEAOf
  :: forall a
   . Partial
  => KnownTypeName a
  => Encoder a
  -> Encoder (NonEmptyArray a)
encodeNEAOf encoder arr = do
  values <- traverse encoder (NonEmptyArray.toArray arr)
  nonEmptyArrayType <- importNonEmptyArrayType
  unsafeCoerceInd <- importUnsafeCoerceInd
  innerRuntimeType <- knownTypeName_importInnerTypeRuntime_getProper @a
  innerExpectedType <- knownTypeName_importInnerTypeExpected_getProper @a
  let
    arrayExpr = exprArray values
    coercion = exprTyped
      (exprIdent unsafeCoerceInd)
      ( typeArrow
          [ typeApp (typeCtor "Array") [ innerRuntimeType ] ] -- typeWildcard will throw warnings
          (typeApp (typeCtor nonEmptyArrayType) [ innerExpectedType ])
      )
  pure $ exprApp coercion [ arrayExpr ]

-- | Encode a map with string keys
encodeMapOf' :: forall a. Partial => Encoder a -> Encoder (Map String a)
encodeMapOf' encoder map = do
  entries <- Map.toUnfoldable map # traverse \(Tuple key val) -> do
    encodedVal <- encoder val
    pure $ Tuple key encodedVal
  pure $ exprRecord entries

-- | Encode a map with non-empty string keys
encodeMapOf :: forall a. Partial => Encoder a -> Encoder (Map NonEmptyString a)
encodeMapOf = unsafeCoerce encodeMapOf'

-- | Encode an optional value
encodeMaybe :: forall a. Partial => Encoder a -> Encoder (Maybe a)
encodeMaybe encoder ma = case ma of
  Just a -> do
    justCtor <- importJustCtor -- Assuming this helper exists for importing Data.Maybe.Just
    encodedA <- encoder a
    pure $ exprApp (exprCtor justCtor) [ encodedA ]
  Nothing -> do
    nothingCtor <- importNothingCtor -- Assuming this helper exists for importing Data.Maybe.Nothing
    pure $ exprCtor nothingCtor

-- | Encode an Either value
encodeEither :: forall a b. Partial => Encoder a -> Encoder b -> Encoder (Either a b)
encodeEither encodeA encodeB eab = case eab of
  Left a -> do
    leftCtor <- importLeftCtor -- Assuming this helper exists for importing Data.Either.Left
    encodedA <- encodeA a
    pure $ exprApp (exprCtor leftCtor) [ encodedA ]
  Right b -> do
    rightCtor <- importRightCtor -- Assuming this helper exists for importing Data.Either.Right
    encodedB <- encodeB b
    pure $ exprApp (exprCtor rightCtor) [ encodedB ]

-- | Encode a string
encodeString :: Partial => Encoder String
encodeString = pure <<< exprString

-- | Helper for encoding records from Javascript values
class EncodeRecord (rl :: RL.RowList Type) (ri :: Row Type) (ro :: Row Type) | rl -> ri ro where
  encodeRecordImpl :: Record ri -> Record ro -> Codegen Void (Array (Tuple String (Expr Void)))

-- | Base case for empty record
instance EncodeRecord RL.Nil () () where
  encodeRecordImpl _ _ = pure []

-- | Recursive case for fields
instance
  ( EncodeRecord tail ri' ro'
  , Row.Cons sym (a -> Codegen Void (Expr Void)) ri' ri
  , Row.Cons sym a ro' ro
  , Row.Lacks sym ri'
  , Row.Lacks sym ro'
  , IsSymbol sym
  ) =>
  EncodeRecord (RL.Cons sym (a -> Codegen Void (Expr Void)) tail) ri ro where
  encodeRecordImpl encoders record = do
    let
      sym = Proxy :: Proxy sym
      key = Symbol.reflectSymbol sym
      encoder = Record.get sym encoders
      value = Record.get sym record
      restEncoders = Record.delete sym encoders :: Record ri'
      restRecord = Record.delete sym record :: Record ro'
    encoded <- encoder value
    rest <- encodeRecordImpl @tail restEncoders restRecord
    pure $ Array.cons (Tuple key encoded) rest

-- encodeRecord
--   :: forall rowListL rowL rowListR rowR zippedRow
--    . RL.RowToList rowL rowListL
--   => RL.RowToList rowR rowListR
--   => ZipRecord rowListL rowListR rowL rowR () zippedRow
--   => MapRecord zippedRowList zippedRow a b () row'
--   => Record rowL
--   -> Encoder (Record rowR)
-- encodeRecord encoders record = do
--   -- Apply encoders to each field using mapValuesWithIndex
--   let (codegenRecord) = zipRecord encoders record
--   let codegenRecord' = mapRecord (\(Tuple key encoder) -> ?a) encoders
--   -- Sequence all Codegen computations to one Codegen of record fields
--   evaluated <- sequenceRecord codegenRecord
--   -- Convert to a record expression
--   unsafeCoerce unit
-- -- pure $ exprRecord (valuesToUnfoldableLazy evaluated :: Array (Tuple String (Expr Void)))

encodeRecord
  :: forall ri ro rl
   . RL.RowToList ri rl
  => EncodeRecord rl ri ro
  => Record ri
  -> Encoder (Record ro)
encodeRecord encoders record = do
  fields <- encodeRecordImpl @rl encoders record
  pure $ exprRecord fields
