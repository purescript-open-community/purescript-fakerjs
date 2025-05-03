module Fakerjs2.Helpers.FromRegExp.Utils where

import Data.Array (range)
import Data.Array as Array
import Data.Array.NonEmpty (NonEmptyArray)
import Data.Array.NonEmpty as NonEmptyArray
import Data.Char (fromCharCode)
import Data.Enum (toEnumWithDefaults)
import Data.Maybe (fromJust)
import Data.Tuple (Tuple(..))
import Partial.Unsafe (unsafePartial)
import Unsafe.Coerce (unsafeCoerce)
import Data.String as String

import Prelude

-- withoutRange 1 3 [1, 2, 3, 4] => [4]
withoutRange :: Int -> Int -> Array Int -> Array Int
withoutRange = \lo hi -> if lo <= hi then withoutRangeImpl lo hi else withoutRangeImpl hi lo -- quickcheck does that
  where
  withoutRangeImpl :: Int -> Int -> Array Int -> Array Int
  withoutRangeImpl lo hi = Array.filter (\x -> x < lo || x > hi)

withoutRangeNE :: Int -> Int -> NonEmptyArray Int -> Array Int
withoutRangeNE = unsafeCoerce withoutRange

-- withoutRanges [ Tuple 1 1, Tuple 3 4 ] [1, 2, 3, 4] => [2]
withoutRanges :: Array (Tuple Int Int) -> Array Int -> Array Int
withoutRanges ranges input = Array.foldl (\acc (Tuple lo hi) -> withoutRange lo hi acc) input ranges

withoutRangesNE :: NonEmptyArray (Tuple Int Int) -> NonEmptyArray Int -> Array Int
withoutRangesNE = unsafeCoerce withoutRanges

---------------------------------------------------------------------

-- | All printable ASCII characters (32-126)
allCharsInts :: NonEmptyArray Int
allCharsInts = unsafePartial $ fromJust $ NonEmptyArray.fromArray $ range 32 126

allChars :: NonEmptyArray Char
allChars = map (\x -> unsafePartial $ fromJust $ fromCharCode x) allCharsInts

-- | All printable ASCII characters (32-126)
allInts :: NonEmptyArray Int
allInts = unsafePartial $ fromJust $ NonEmptyArray.fromArray $ range 0 9

intToChar :: Int -> Char
intToChar = toEnumWithDefaults bottom top

toLowerChar :: Char -> Char
toLowerChar = unsafeCoerce String.toLower

toUpperChar :: Char -> Char
toUpperChar = unsafeCoerce String.toUpper
