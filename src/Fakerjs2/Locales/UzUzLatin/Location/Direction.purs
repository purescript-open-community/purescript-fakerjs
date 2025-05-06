module Fakerjs2.Locales.UzUzLatin.Location.Direction
  ( cardinal
  , cardinal_abbr
  , ordinal
  , ordinal_abbr
  ) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

cardinal = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Shimol", "Sharq", "Janub", "G'arb" ]

cardinal_abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Shimol", "Sharq", "Janub", "G'arb" ]

ordinal = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Shimoli-sharqiy", "Shimoli g'arbiy", "Janubi-sharqiy", "Janubi-g'arbiy" ]

ordinal_abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Shimoli-sharqiy", "Shimoli g'arbiy", "Janubi-sharqiy", "Janubi-g'arbiy" ]
