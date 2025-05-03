module Fakerjs2.Locales.En.Location.Direction (cardinal, cardinal_abbr, ordinal, ordinal_abbr) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (DirectionCardinal, DirectionCardinalAbbr, DirectionOrdinal, DirectionOrdinalAbbr)
import Unsafe.Coerce (unsafeCoerce)

cardinal :: DirectionCardinal
cardinal = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "North", "East", "South", "West" ]

cardinal_abbr :: DirectionCardinalAbbr
cardinal_abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "N", "E", "S", "W" ]

ordinal :: DirectionOrdinal
ordinal = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Northeast", "Northwest", "Southeast", "Southwest" ]

ordinal_abbr :: DirectionOrdinalAbbr
ordinal_abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "NE", "NW", "SE", "SW" ]
