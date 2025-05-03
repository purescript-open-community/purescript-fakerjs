module Fakerjs2.Locales.Hy.Location.Direction (cardinal, cardinal_abbr, ordinal, ordinal_abbr) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (DirectionCardinal, DirectionCardinalAbbr, DirectionOrdinal, DirectionOrdinalAbbr)
import Unsafe.Coerce (unsafeCoerce)

cardinal :: DirectionCardinal
cardinal = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Հյուսիսային", "Արևելյան", "Հարավային", "Արևմտյան" ]

cardinal_abbr :: DirectionCardinalAbbr
cardinal_abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "հս․ լ․", "ավ․ ե․", "հվ․ լ․", "ամ․ ե․" ]

ordinal :: DirectionOrdinal
ordinal = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Հյուսիսարևելյան", "Հյուսիսարևմտյան", "Հարավարևելյան", "Հարավարևմտյան" ]

ordinal_abbr :: DirectionOrdinalAbbr
ordinal_abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "հս․ լ․ ավ․ ե․", "հս․ լ․ ամ․ ե․", "հվ․ լ․ ավ․ ե․", "հվ․ լ․ ամ․ ե․" ]
