module Fakerjs2.Helpers.FromRegExp.Encoder where

import Fakerjs2.Helpers.FromRegExp.Types
import Fakerjs2Generate.JavascriptBetter.Encode.Imports
import Fakerjs2Generate.JavascriptBetter.Encode.KnownTypeName
import Fakerjs2Generate.JavascriptBetter.Encode.Utils
import Prelude
import Prelude
import Tidy.Codegen

import Data.Array as Array
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
import Dodo as Dodo
import Fakerjs2Generate.JavascriptBetter.Encode.Impl
import Fakerjs2Generate.JavascriptBetter.Types (ReplaceSymbols, Weighted, WithFunctionCall)
import Prim.Row as Row
import Prim.RowList as RL
import PureScript.CST.Types (Expr)
import PureScript.CST.Types (Ident, Proper, QualifiedName)
import PureScript.CST.Types as CST
import PureScript.CST.Types as CST
import Record as Record
import Tidy as Tidy
import Tidy.Codegen.Monad (Codegen, CodegenT, importCtor)
import Tidy.Codegen.Monad (CodegenT)
import Tidy.Codegen.Monad as Tidy.Codegen.Monad
import Type.Prelude as Symbol
import Type.Proxy (Proxy(..))
import Unsafe.Coerce (unsafeCoerce)
import Fakerjs2.Helpers.FromRegExp.Encoder.Imports

encodeAtom :: Partial => Encoder Atom
encodeAtom = case _ of
  LitChar c -> do
    ctor <- importAtomCtor "LitChar"
    pure $ exprApp (exprCtor ctor) [ exprChar c ]
  AnyCharInRange c1 c2 -> do
    ctor <- importAtomCtor "AnyCharInRange"
    pure $ exprApp (exprCtor ctor) [ exprChar c1, exprChar c2 ]
  AnyAlphabetChar -> do
    ctor <- importAtomCtor "AnyAlphabetChar"
    pure $ exprCtor ctor
  AnyAlphabetCharUppercase -> do
    ctor <- importAtomCtor "AnyAlphabetCharUppercase"
    pure $ exprCtor ctor
  AnyAlphabetCharLowercase -> do
    ctor <- importAtomCtor "AnyAlphabetCharLowercase"
    pure $ exprCtor ctor
  AnyAlphabetCharNotIn chars -> do
    ctor <- importAtomCtor "AnyAlphabetCharNotIn"
    c <- encodeNEAOf encodeChar chars
    pure $ exprApp (exprCtor ctor) [ c ]
  AnyAlphabetCharNotInRange ranges -> do
    ctor <- importAtomCtor "AnyAlphabetCharNotInRange"
    c <- encodeNEAOf encodeCharTuple ranges
    pure $ exprApp (exprCtor ctor) [ c ]
  LitDigit n -> do
    ctor <- importAtomCtor "LitDigit"
    pure $ exprApp (exprCtor ctor) [ exprInt n ]
  AnyDigitInRange a b -> do
    ctor <- importAtomCtor "AnyDigitInRange"
    pure $ exprApp (exprCtor ctor) [ exprInt a, exprInt b ]
  AnyDigit -> do
    ctor <- importAtomCtor "AnyDigit"
    pure $ exprCtor ctor
  AnyDigitEqOrMore2 -> do
    ctor <- importAtomCtor "AnyDigitEqOrMore2"
    pure $ exprCtor ctor
  AnyDigitNotIn digits -> do
    ctor <- importAtomCtor "AnyDigitNotIn"
    d <- encodeNEAOf encodeInt digits
    pure $ exprApp (exprCtor ctor) [ d ]
  AnyDigitNotInRange ranges -> do
    ctor <- importAtomCtor "AnyDigitNotInRange"
    r <- encodeNEAOf encodeIntTuple ranges
    pure $ exprApp (exprCtor ctor) [ r ]
  AnyAlphabetCharOrDecimal -> do
    ctor <- importAtomCtor "AnyAlphabetCharOrDecimal"
    pure $ exprCtor ctor

encodeQuantifier :: Partial => Encoder Quantifier
encodeQuantifier = case _ of
  Once -> do
    ctor <- importQuantifierCtor "Once"
    pure $ exprCtor ctor
  Exactly n -> do
    ctor <- importQuantifierCtor "Exactly"
    pure $ exprApp (exprCtor ctor) [ exprInt n ]
  Between a b -> do
    ctor <- importQuantifierCtor "Between"
    pure $ exprApp (exprCtor ctor) [ exprInt a, exprInt b ]
  ZeroOrMore -> do
    ctor <- importQuantifierCtor "ZeroOrMore"
    pure $ exprCtor ctor
  OneOrMore -> do
    ctor <- importQuantifierCtor "OneOrMore"
    pure $ exprCtor ctor
  Optional -> do
    ctor <- importQuantifierCtor "Optional"
    pure $ exprCtor ctor

encodeTypeSafePattern :: Partial => Encoder TypeSafePattern
encodeTypeSafePattern = case _ of
  PAtom atom quant -> do
    ctor <- importTypeSafePatternCtor "PAtom"
    e1 <- encodeAtom atom
    e2 <- encodeQuantifier quant
    pure $ exprApp (exprCtor ctor) [ e1, e2 ]
  PGroup patterns quant -> do
    ctor <- importTypeSafePatternCtor "PGroup"
    encodedGroup <- encodeNEAOf encodeTypeSafePattern patterns
    encodedQuant <- encodeQuantifier quant
    pure $ exprApp (exprCtor ctor) [ encodedGroup, encodedQuant ]
  PLitNES nes -> do
    ctor <- importTypeSafePatternCtor "PLitNES"
    unsafeFromString <- importUnsafeFromString
    pure $ exprApp (exprCtor ctor) [ exprApp (exprIdent unsafeFromString) [ exprString (NonEmptyString.toString nes) ] ]
  PGenNES _gen -> do
    genType <- importGenType
    unsafeCoerceInd <- importUnsafeCoerceInd
    pure $ exprApp
      ( exprTyped
          (exprIdent unsafeCoerceInd)
          (typeApp (typeCtor genType) [ typeCtor "NonEmptyString" ])
      )
      [ exprIdent "PLACEHOLDER_GEN" ] -- replace at generation time

encodeNonEmptyArrayTypeSafePattern
  :: Partial
  => Encoder (NonEmptyArray TypeSafePattern)
encodeNonEmptyArrayTypeSafePattern = encodeNEAOf encodeTypeSafePattern

-- encodeCallUnsafeGenerate
--   :: Partial
--   => Boolean
--   -> Encoder (NonEmptyArray TypeSafePattern)
-- encodeCallUnsafeGenerate caseSensitive patterns = do
--   unsafeGenerateFn <- importUnsafeGenerateFn
--   encodedPatterns <- encodeNEAOf encodeTypeSafePattern patterns
--   pure $ exprApp (exprIdent unsafeGenerateFn) [ exprBool caseSensitive, encodedPatterns ]
