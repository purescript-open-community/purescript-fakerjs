module Fakerjs2Generate.JavascriptBetter.Encode.CodeGenOutput where

import Fakerjs2Generate.JavascriptBetter.Encode.Impl
import Prelude

import Data.Array as Array
import Data.Array.NonEmpty (NonEmptyArray)
import Data.Array.NonEmpty (NonEmptyArray)
import Data.Array.NonEmpty as NonEmptyArray
import Data.Bifunctor (lmap)
import Data.Either (Either(..))
import Data.Map (Map)
import Data.Map as Map
import Data.Maybe (Maybe(..), fromJust)
import Data.Set as Set
import Data.String.NonEmpty (NonEmptyString)
import Data.String.NonEmpty (NonEmptyString)
import Data.String.NonEmpty as NonEmptyString
import Data.Symbol (class IsSymbol)
import Data.Symbol (class IsSymbol)
import Data.Traversable (traverse)
import Data.Tuple (Tuple(..), fst)
import Data.Tuple (Tuple)
import Data.Tuple.Nested (type (/\), (/\))
import Fakerjs2Generate.Javascript (Javascript(..))
import Foreign.Object as Object
import Partial.Unsafe (unsafePartial)
import Prim.Row as Row
import Prim.Row as Row
import Prim.RowList as RL
import Prim.RowList as RL
import PureScript.CST.Types (Expr)
import PureScript.CST.Types (Expr, Ident, Module, Proper, QualifiedName)
import PureScript.CST.Types as CST
import Record as Record
import Safe.Coerce (coerce)
import Tidy.Codegen (declSignature, declValue, exprApp, exprArray, exprCtor, exprIdent, exprInt, exprRecord, exprString, exprTyped, typeApp, typeArrow, typeCtor, typeRow, typeWildcard)
import Tidy.Codegen (typeApp, typeCtor, typeVar, typeRow, typeRecord)
import Tidy.Codegen.Class (toQualifiedName)
import Tidy.Codegen.Monad (Codegen)
import Tidy.Codegen.Monad (Codegen, CodegenT, exporting, write)
import Tidy.Codegen.Monad as Tidy.Codegen.Monad
import Type.Prelude as Symbol
import Type.Prelude as Symbol
import Type.Proxy (Proxy(..))
import Type.Proxy (Proxy(..))
import Unsafe.Coerce (unsafeCoerce)

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
class ExportRecord (rowList :: RL.RowList Type) (row :: Row Type) | rowList -> row where
  exportRecordImpl :: Record row -> Array CodeGenOutput_ManyFunctionExported_Value

-- | Base case for empty record
instance ExportRecord RL.Nil () where
  exportRecordImpl _ = []

-- | Recursive case for fields
instance
  ( ExportRecord rowListTail rowTail
  , Row.Cons sym (a -> Codegen Void (Expr Void)) rowTail row
  , Row.Cons sym a ro' ro
  , Row.Lacks sym rowTail
  , Row.Lacks sym ro'
  , IsSymbol sym
  ) =>
  ExportRecord (RL.Cons sym (Encoder a) rowListTail) row where
  exportRecordImpl record =
    let
      sym = Proxy :: Proxy sym
      key = Symbol.reflectSymbol sym
      tailP = Proxy :: Proxy rowListTail
      exportr = Record.get sym exportrs
      value = Record.get sym record
      restexportrs = Record.delete sym exportrs :: Record rowTail
      restRecord = Record.delete sym record :: Record ro'
      exportd = exportr value
      rest = exportRecordImpl tailP restexportrs restRecord
    in
      Array.cons (Tuple key exportd) rest

exportRecord
  :: forall row rowList
   . RL.RowToList row rowList
  => ExportRecord rowList row
  => Record row
  -> CodeGenOutput
exportRecord record =
  -- fields <-
  let
    (fields :: Array CodeGenOutput_ManyFunctionExported_Value) = exportRecordImpl @rowList record
    (fields' :: NonEmptyArray CodeGenOutput_ManyFunctionExported_Value) = unsafePartial $ fromJust $ NonEmptyArray.fromArray fields
  in
    CodeGenOutput_ManyFunctionExported fields'
