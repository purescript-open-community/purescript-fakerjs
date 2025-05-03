module Fakerjs2.Locales.Fa.Location.Direction (cardinal, cardinal_abbr, ordinal, ordinal_abbr) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (DirectionCardinal, DirectionCardinalAbbr, DirectionOrdinal, DirectionOrdinalAbbr)
import Unsafe.Coerce (unsafeCoerce)

cardinal :: DirectionCardinal
cardinal = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "شمال", "شرق", "جنوب", "غرب" ]

cardinal_abbr :: DirectionCardinalAbbr
cardinal_abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "شمالی", "شرقی", "جنوبی", "غربی" ]

ordinal :: DirectionOrdinal
ordinal = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "شمال شرق", "شمال غرب", "جنوب شرق", "جنوب غرب" ]

ordinal_abbr :: DirectionOrdinalAbbr
ordinal_abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "شمال شرق", "شمال غرب", "جنوب شرق", "جنوب غرب" ]
