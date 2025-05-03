module Fakerjs2.Locales.FrCh.Location.Direction (cardinal, cardinal_abbr, ordinal, ordinal_abbr) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (DirectionCardinal, DirectionCardinalAbbr, DirectionOrdinal, DirectionOrdinalAbbr)
import Unsafe.Coerce (unsafeCoerce)

cardinal :: DirectionCardinal
cardinal = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Nord", "Est", "Sud", "Ouest" ]

cardinal_abbr :: DirectionCardinalAbbr
cardinal_abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "N", "E", "S", "O" ]

ordinal :: DirectionOrdinal
ordinal = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Nord-est", "Nord-ouest", "Sud-est", "Sud-ouest" ]

ordinal_abbr :: DirectionOrdinalAbbr
ordinal_abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "NE", "NO", "SE", "SO" ]
