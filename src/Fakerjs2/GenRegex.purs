module Fakerjs2.GenRegex where

import Prelude

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Array.NonEmpty as NonEmptyArray
import Data.Maybe (fromJust)
import Data.String.NonEmpty (NonEmptyString)
import Data.String.NonEmpty.CodeUnits (fromNonEmptyCharArray)
import Partial.Unsafe (unsafePartial)
import Test.QuickCheck.Gen (Gen, elements)

validLetters :: NonEmptyArray Char
validLetters = unsafePartial $ fromJust $ NonEmptyArray.fromArray [ 'A', 'B', 'C', 'E', 'G', 'H', 'J', 'K', 'L', 'M', 'N', 'P', 'R', 'S', 'T', 'V', 'W', 'X', 'Y', 'Z' ]

validInt :: NonEmptyArray Char
validInt = unsafePartial $ fromJust $ NonEmptyArray.fromArray [ '0', '1', '2', '3', '4', '5', '6', '7', '8', '9' ]

digitChar :: Gen Char
digitChar = elements validInt

letterChar :: Gen Char
letterChar = elements validLetters

-- same as """helpers.fromRegExp("A[0-9][ABCEGHJ-NPRSTVW-Z] [0-9][ABCEGHJ-NPRSTVW-Z][0-9]")"""
generatePostalCode :: NonEmptyArray Char -> Gen NonEmptyString
generatePostalCode prefix = do
  prefixChar <- elements prefix
  d1 <- digitChar
  l1 <- letterChar
  d2 <- digitChar
  l2 <- letterChar
  d3 <- digitChar
  pure $ fromNonEmptyCharArray $ NonEmptyArray.cons' prefixChar [ d1, l1, ' ', d2, l2, d3 ]
