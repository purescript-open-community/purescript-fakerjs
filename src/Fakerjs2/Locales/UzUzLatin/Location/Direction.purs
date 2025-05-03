module Fakerjs2.Locales.UzUzLatin.Location.Direction
  ( cardinal
  , cardinal_abbr
  , ordinal
  , ordinal_abbr
  ) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (DirectionCardinal, DirectionCardinalAbbr, DirectionOrdinal, DirectionOrdinalAbbr)
import Unsafe.Coerce (unsafeCoerce)

cardinal :: DirectionCardinal
cardinal = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Shimol", "Sharq", "Janub", "G'arb" ]

cardinal_abbr :: DirectionCardinalAbbr
cardinal_abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Shimol", "Sharq", "Janub", "G'arb" ]

ordinal :: DirectionOrdinal
ordinal = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Shimoli-sharqiy", "Shimoli g'arbiy", "Janubi-sharqiy", "Janubi-g'arbiy" ]

ordinal_abbr :: DirectionOrdinalAbbr
ordinal_abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Shimoli-sharqiy", "Shimoli g'arbiy", "Janubi-sharqiy", "Janubi-g'arbiy" ]
