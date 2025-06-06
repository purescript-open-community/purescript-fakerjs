module Fakerjs2.Helpers.FromRegExp.Types where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Eq (class Eq)
import Data.Ord (class Ord)
import Data.String.NonEmpty (NonEmptyString)
import Data.Tuple (Tuple)
import Test.QuickCheck.Gen (Gen)

-- | Represents a single character pattern
-- | Examples:
-- | ```purescript
-- | Lit 'a'  -- Matches literal character 'a'
-- | Range 'a' 'z'  -- Matches any character between 'a' and 'z'
-- | Wildcard  -- Matches any alphabetic character
-- | NotIn ['a', 'b']  -- Matches any character except 'a' or 'b'
-- | NotInRange [(Tuple 'a' 'z')]  -- Matches any character not in range 'a'-'z'
-- | ```
data Atom
  = LitChar Char
  | AnyCharInRange Char Char
  | AnyAlphabetChar
  | AnyAlphabetCharUppercase -- `?` in replaceSymbols
  | AnyAlphabetCharLowercase
  | AnyAlphabetCharNotIn (NonEmptyArray Char)
  | AnyAlphabetCharNotInRange (NonEmptyArray (Tuple Char Char))
  ---------
  | LitDigit Int
  | AnyDigitInRange Int Int
  | AnyDigit -- `#` in replaceSymbols
  | AnyDigitEqOrMore2 -- `!` in legacyReplaceSymbolWithNumber, used for credit cards
  | AnyDigitNotIn (NonEmptyArray Int)
  | AnyDigitNotInRange (NonEmptyArray (Tuple Int Int))
  ---------
  | AnyAlphabetCharOrDecimal -- `*` in replaceSymbols

derive instance Eq Atom
derive instance Ord Atom

-- | Represents pattern repetition rules
-- | Examples:
-- | ```purescript
-- | Once  -- Match exactly once
-- | Exactly 3  -- Match exactly 3 times
-- | Between 1 3  -- Match between 1 and 3 times
-- | ZeroOrMore  -- Match 0 or more times
-- | OneOrMore  -- Match 1 or more times
-- | Optional  -- Match 0 or 1 time
-- | ```
data Quantifier
  = Once -- default
  | Exactly Int
  | Between Int Int
  | ZeroOrMore
  | OneOrMore
  | Optional

derive instance Eq Quantifier
derive instance Ord Quantifier

-- | A type-safe representation of regex patterns
-- | Examples:
-- | ```purescript
-- | PAtom (Lit 'a') Once  -- Matches 'a' once
-- | PGroup [PAtom (Lit 'a') Once, PAtom (Lit 'b') Once] (Exactly 2)  -- Matches "ab" twice
-- | ```
data TypeSafePattern
  = PAtom Atom Quantifier
  | PGroup (NonEmptyArray TypeSafePattern) Quantifier
  | PLitNES NonEmptyString
  | PGenNES (Gen NonEmptyString)

-- derive instance Eq TypeSafePattern
-- derive instance Ord TypeSafePattern
