module Fakerjs2Generate.JavascriptBetter.Encode.CodeGenOutput where

import Fakerjs2Generate.JavascriptBetter.Encode.Impl (Encoder, encodeNEAOf, encodeNES)
import Prelude

import Data.Array as Array
import Data.Array.NonEmpty (NonEmptyArray)
import Data.Array.NonEmpty as NonEmptyArray
import Data.Maybe (Maybe(..))
import Data.String.NonEmpty (NonEmptyString)
import Data.String.NonEmpty as NonEmptyString
import Data.Symbol (class IsSymbol)
import Data.Tuple (Tuple(..))
import Partial.Unsafe (unsafePartial)
import Prim.Row as Row
import Prim.RowList as RL
import PureScript.CST.Types (Expr)
import Record as Record
import Tidy.Codegen.Monad (Codegen)
import Type.Prelude as Symbol
import Type.Proxy (Proxy(..))

type CodeGenOutput_ManyFunctionExported_Value = Tuple NonEmptyString (Codegen Void (Expr Void))

data CodeGenOutput
  = CodeGenOutput_Ignore
  | CodeGenOutput_OneFunctionFileNamed (Codegen Void (Expr Void))
  | CodeGenOutput_ManyFunctionExported (NonEmptyArray CodeGenOutput_ManyFunctionExported_Value)

type EncoderToExport a = a -> CodeGenOutput

exportOne :: forall a. Encoder a -> EncoderToExport a
exportOne = map CodeGenOutput_OneFunctionFileNamed

---------------------------

-- | Helper for encoding records from Javascript values
class ExportRecord (rowList :: RL.RowList Type) (row :: Row Type) (valueToEncode_row :: Row Type) | rowList -> row valueToEncode_row where
  exportRecordImpl :: Record row -> Record valueToEncode_row -> Array CodeGenOutput_ManyFunctionExported_Value

-- | Base case for empty record
instance ExportRecord RL.Nil any any2 where
  exportRecordImpl _ _ = []

newtype Optional a = Optional (Encoder a)

instance
  ( ExportRecord rowListTail row valueToEncode_row
  , Row.Cons sym (Optional a) rowTail row
  , Row.Cons sym (Maybe a) valueToEncode_rowTail valueToEncode_row
  , IsSymbol sym
  ) =>
  ExportRecord (RL.Cons sym (Optional a) rowListTail) row valueToEncode_row where
  exportRecordImpl recordOfEncoders valueToEncode =
    let
      sym = Proxy :: Proxy sym
      (Optional encoder :: Optional a) = Record.get sym recordOfEncoders
      value = Record.get sym valueToEncode :: Maybe a
      rest = exportRecordImpl @rowListTail recordOfEncoders valueToEncode :: Array CodeGenOutput_ManyFunctionExported_Value
    in
      case value of
        Nothing -> []
        Just value' ->
          let
            key = unsafePartial $ NonEmptyString.unsafeFromString $ Symbol.reflectSymbol sym
            exported = encoder value'
            new = Tuple key exported :: CodeGenOutput_ManyFunctionExported_Value
          in
            Array.cons new rest
else instance
  ( ExportRecord rowListTail row valueToEncode_row
  , Row.Cons sym (Encoder a) rowTail row
  , Row.Cons sym a valueToEncode_rowTail valueToEncode_row
  , IsSymbol sym
  ) =>
  ExportRecord (RL.Cons sym (Encoder a) rowListTail) row valueToEncode_row where
  exportRecordImpl recordOfEncoders valueToEncode =
    let
      sym = Proxy :: Proxy sym
      key = unsafePartial $ NonEmptyString.unsafeFromString $ Symbol.reflectSymbol sym
      (encoder :: Encoder a) = Record.get sym recordOfEncoders
      value = Record.get sym valueToEncode :: a
      rest = exportRecordImpl @rowListTail recordOfEncoders valueToEncode :: Array CodeGenOutput_ManyFunctionExported_Value
      exported = encoder value
      new = Tuple key exported :: CodeGenOutput_ManyFunctionExported_Value
    in
      Array.cons new rest

exportRecord
  :: forall row rowList valueToEncode_row
   . RL.RowToList row rowList
  => ExportRecord rowList row valueToEncode_row
  => Record row
  -> Record valueToEncode_row
  -> CodeGenOutput
exportRecord recordOfEncoders valueToEncode =
  let
    (fields :: Array CodeGenOutput_ManyFunctionExported_Value) = exportRecordImpl @rowList recordOfEncoders valueToEncode
  in
    case NonEmptyArray.fromArray fields of
      Nothing -> CodeGenOutput_Ignore
      Just fields' -> CodeGenOutput_ManyFunctionExported fields'

exportRecordIgnoreIfNothing
  :: forall row rowList valueToEncode_row
   . RL.RowToList row rowList
  => ExportRecord rowList row valueToEncode_row
  => Record row
  -> Maybe (Record valueToEncode_row)
  -> CodeGenOutput
exportRecordIgnoreIfNothing recordOfEncoders =
  case _ of
    Nothing -> CodeGenOutput_Ignore
    Just valueToEncode -> exportRecord recordOfEncoders valueToEncode

exportOneIgnoreIfNothing
  :: forall a
   . Encoder a
  -> Maybe a
  -> CodeGenOutput
exportOneIgnoreIfNothing encoder =
  case _ of
    Nothing -> CodeGenOutput_Ignore
    Just v -> CodeGenOutput_OneFunctionFileNamed $ encoder v

-- encodeNEAOf encodeString
exportOneIgnoreIfNothing__encodeNEAofString__ignoreIfEmptyString
  :: Partial
  => Maybe (NonEmptyArray String)
  -> CodeGenOutput
exportOneIgnoreIfNothing__encodeNEAofString__ignoreIfEmptyString =
  case _ of
    Nothing -> CodeGenOutput_Ignore
    Just v ->
      case NonEmptyArray.fromArray $ NonEmptyArray.mapMaybe NonEmptyString.fromString v of
        Nothing -> CodeGenOutput_Ignore
        Just v' -> CodeGenOutput_OneFunctionFileNamed $ encodeNEAOf encodeNES v'
