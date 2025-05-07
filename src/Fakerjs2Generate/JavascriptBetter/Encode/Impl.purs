module Fakerjs2Generate.JavascriptBetter.Encode.Impl where

import Fakerjs2Generate.JavascriptBetter.Encode.Imports
import Fakerjs2Generate.JavascriptBetter.Encode.KnownTypeName
import Fakerjs2Generate.JavascriptBetter.Encode.Utils
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
import Fakerjs2Generate.JavascriptBetter.Types (ReplaceSymbols, Weighted, WithFunctionCall)
import Prim.Row as Row
import Prim.RowList as RL
import PureScript.CST.Types (Expr)
import PureScript.CST.Types as CST
import Record as Record
import Tidy.Codegen (exprApp, exprArray, exprChar, exprCtor, exprIdent, exprInt, exprRecord, exprString, exprTyped, typeApp, typeArrow, typeCtor, typeRecord)
import Tidy.Codegen.Monad (Codegen, CodegenT)
import Type.Prelude as Symbol
import Type.Proxy (Proxy(..))
import Unsafe.Coerce (unsafeCoerce)

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
encodeTuple :: forall a b. Partial => Encoder a -> Encoder b -> Encoder (Tuple a b)
encodeTuple ea eb (Tuple a b) = do
  tupleCtor <- importTupleCtor
  ea' <- ea a
  eb' <- eb b
  pure $ exprApp (exprCtor tupleCtor) [ ea', eb' ]

encodeChar :: Partial => Encoder Char
encodeChar c = pure $ exprChar c

encodeCharTuple :: Partial => Encoder (Tuple Char Char)
encodeCharTuple = encodeTuple encodeChar encodeChar

encodeIntTuple :: Partial => Encoder (Tuple Int Int)
encodeIntTuple = encodeTuple encodeInt encodeInt

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

-- encodeArrayOfString :: Partial => Encoder (Array String)
-- encodeArrayOfString =

-- | Helper for encoding records from Javascript values
class EncodeRecord (rowList :: RL.RowList Type) (row :: Row Type) (valueToEncode_row :: Row Type) | rowList -> row valueToEncode_row where
  encodeRecordImpl :: Record row -> Record valueToEncode_row -> Codegen Void (Array (Tuple String (Expr Void)))

-- | Base case for empty record
instance EncodeRecord RL.Nil any any2 where
  encodeRecordImpl _ _ = pure []

-- | Recursive case for fields
instance
  ( EncodeRecord rowListTail row valueToEncode_row
  , Row.Cons sym (Encoder a) rowTail row
  , Row.Cons sym a valueToEncode_rowTail valueToEncode_row
  , IsSymbol sym
  ) =>
  EncodeRecord (RL.Cons sym (Encoder a) rowListTail) row valueToEncode_row where
  encodeRecordImpl encoders record = do
    let
      sym = Proxy :: Proxy sym
      key = Symbol.reflectSymbol sym
      encoder = Record.get sym encoders
      value = Record.get sym record
    encoded <- encoder value
    rest <- encodeRecordImpl @rowListTail encoders record
    pure $ Array.cons (Tuple key encoded) rest

encodeRecord
  :: forall encoders_row valueToEncode_row encoders_rowList
   . RL.RowToList encoders_row encoders_rowList
  => EncodeRecord encoders_rowList encoders_row valueToEncode_row
  => Record encoders_row
  -> Encoder (Record valueToEncode_row)
encodeRecord recordOfEncoders valueToEncode = do
  fields <- encodeRecordImpl @encoders_rowList recordOfEncoders valueToEncode
  pure $ exprRecord fields
