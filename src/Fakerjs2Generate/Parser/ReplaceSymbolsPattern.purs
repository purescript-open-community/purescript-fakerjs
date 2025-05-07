module Fakerjs2Generate.Parser.ReplaceSymbolsPattern (parseReplaceSymbols, ReplaceSymbolsPattern, unReplaceSymbolsPattern) where

import Fakerjs2.Helpers.FromRegExp.Types (Atom(..), Quantifier(..), TypeSafePattern(..))
import Prelude

import Data.Array (foldl)
import Data.Array.NonEmpty (NonEmptyArray)
import Data.Map (Map)
import Data.Map as Map
import Data.Maybe (fromMaybe)
import Data.String.NonEmpty (NonEmptyString)
import Data.String.NonEmpty.CodeUnits (toNonEmptyCharArray) as NonEmptyString
import Data.Tuple.Nested (type (/\), (/\))
import Unsafe.Coerce (unsafeCoerce)

newtype ReplaceSymbolsPattern = ReplaceSymbolsPattern (NonEmptyArray TypeSafePattern)

unReplaceSymbolsPattern :: ReplaceSymbolsPattern -> NonEmptyArray TypeSafePattern
unReplaceSymbolsPattern (ReplaceSymbolsPattern x) = x

-- derive newtype instance Show TypeSafePattern
-- derive newtype instance Show ReplaceSymbols

count :: forall a. Ord a => Eq a => Array a -> Map a Int
count = foldl updateCount Map.empty
  where
  updateCount acc x =
    let
      current = fromMaybe 0 (Map.lookup x acc)
    in
      Map.insert x (current + 1) acc

countA :: forall a. Ord a => Eq a => Array a -> Array (a /\ Int)
countA = count >>> Map.toUnfoldable

countNEA :: forall a. Ord a => Eq a => NonEmptyArray a -> NonEmptyArray (a /\ Int)
countNEA = (unsafeCoerce :: forall x y. (Array x -> Array y) -> NonEmptyArray x -> NonEmptyArray y) countA

-- | Parse a template string with `#`, `?`, `*`, and literal characters
parseReplaceSymbols :: NonEmptyString -> ReplaceSymbolsPattern
parseReplaceSymbols str =
  str
    # NonEmptyString.toNonEmptyCharArray
    # map charToPattern
    # groupLiterals
    # ReplaceSymbolsPattern

-- | Convert a character to an `Atom`
charToPattern :: Char -> Atom
charToPattern '#' = AnyDigit
charToPattern '?' = AnyAlphabetCharUppercase
charToPattern '*' = AnyAlphabetCharOrDecimal
charToPattern c = LitChar c

-- | Convert an integer to a Quantifier
intToQuantifier :: Int -> Quantifier
intToQuantifier 1 = Once
intToQuantifier n = Exactly n

groupLiterals :: NonEmptyArray Atom -> NonEmptyArray TypeSafePattern
groupLiterals = countNEA >>> map (\(a /\ i) -> PAtom a (intToQuantifier i))
