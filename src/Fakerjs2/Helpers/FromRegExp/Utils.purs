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

-- | ASCII character set, excluding control codes
-- https://github.com/purescript/purescript-strings/blob/b6654d49e2300416b25c05a00a0e6065c29fcf07/src/Data/Char/Gen.purs#L14
asciiCharsInts :: NonEmptyArray Int
asciiCharsInts = unsafePartial $ fromJust $ NonEmptyArray.fromArray $ range 32 126

asciiChars :: NonEmptyArray Char
asciiChars = map (\x -> unsafePartial $ fromJust $ fromCharCode x) asciiCharsInts

--------------
alphaLowercaseCharsInts :: NonEmptyArray Int
alphaLowercaseCharsInts = unsafePartial $ fromJust $ NonEmptyArray.fromArray $ range 32 126

alphaLowercaseChars :: NonEmptyArray Char
alphaLowercaseChars = map (\x -> unsafePartial $ fromJust $ fromCharCode x) alphaLowercaseCharsInts

alphaUppercaseCharsInts :: NonEmptyArray Int
alphaUppercaseCharsInts = unsafePartial $ fromJust $ NonEmptyArray.fromArray $ range 65 90

alphaUppercaseChars :: NonEmptyArray Char
alphaUppercaseChars = map (\x -> unsafePartial $ fromJust $ fromCharCode x) alphaUppercaseCharsInts

alphaCharsInts :: NonEmptyArray Int
alphaCharsInts = alphaUppercaseCharsInts <> alphaLowercaseCharsInts

alphaChars :: NonEmptyArray Char
alphaChars = alphaUppercaseChars <> alphaLowercaseChars

--------------

digits :: NonEmptyArray Int
digits = unsafePartial $ fromJust $ NonEmptyArray.fromArray $ range 0 9

digitsEqOrMore2 :: NonEmptyArray Int
digitsEqOrMore2 = unsafePartial $ fromJust $ NonEmptyArray.fromArray $ range 2 9

digitsEqOrMore2Chars :: NonEmptyArray Char
digitsEqOrMore2Chars = map (\x -> unsafePartial $ fromJust $ fromCharCode x) digitsEqOrMore2

intToChar :: Int -> Char
intToChar = toEnumWithDefaults bottom top

toLowerChar :: Char -> Char
toLowerChar = unsafeCoerce String.toLower

toUpperChar :: Char -> Char
toUpperChar = unsafeCoerce String.toUpper
