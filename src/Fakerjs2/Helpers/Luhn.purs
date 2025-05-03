module Fakerjs2.Helpers.Luhn where

import Prelude

import Data.Array as Array
import Data.List (List(..), (:))
import Data.List as List

-- Converts an Integer into an array of its digits (least significant first)
toDigits :: Int -> List Int
toDigits n =
  if n < 1 then Nil
  else (n `mod` 10) : toDigits (n / 10)

-- AltMap: Alternates between two functions
altMap :: forall a b. (a -> b) -> (a -> b) -> List a -> List b
altMap _ _ Nil = Nil
altMap f _ (x : Nil) = f x : Nil
altMap f g (x1 : x2 : xs) = f x1 : g x2 : altMap f g xs

-- Double every other element, starting from second
doubleEveryOther :: List Int -> List Int
doubleEveryOther = altMap identity (\x -> x * 2)

-- Sum all digits, reducing numbers over 9
sumDigits :: List Int -> Int
sumDigits Nil = 0
sumDigits (x : xs) =
  let
    singleDigit = if x > 9 then x - 9 else x
  in
    singleDigit + sumDigits xs

-- Luhn validate: check if number is valid
validateReversed :: List Int -> Boolean
validateReversed = (\xs -> sumDigits (doubleEveryOther xs) `mod` 10 == 0)

validate :: Array Int -> Boolean
validate = Array.reverse >>> List.fromFoldable >>> validateReversed
