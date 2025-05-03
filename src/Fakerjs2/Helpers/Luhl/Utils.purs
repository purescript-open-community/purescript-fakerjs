module Fakerjs2.Helpers.Luhl.Utils where

import Prelude

import Data.Int (decimal, fromStringAs)
import Data.Maybe (Maybe)
import Data.String.CodeUnits as String
import Data.Traversable (traverse)
import Unsafe.Coerce (unsafeCoerce)

-- | Convert a character into a digit, if it's valid.
charToDigit' :: String -> Maybe Int
charToDigit' = fromStringAs decimal

charToDigit :: Char -> Maybe Int
charToDigit = unsafeCoerce charToDigit'

stringToDigitArray :: String -> Maybe (Array Int)
stringToDigitArray = String.toCharArray >>> traverse charToDigit
