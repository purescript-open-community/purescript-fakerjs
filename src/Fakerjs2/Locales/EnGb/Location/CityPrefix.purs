module Fakerjs2.Locales.EnGb.Location.CityPrefix (city_prefix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

city_prefix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Great"
  , "Little"
  , "St."
  , "West"
  , "East"
  , "North"
  , "South"
  , "Upper"
  , "Lower"
  , "Old"
  , "Long"
  , "New"
  , "High"
  , "Nether"
  , "Castle"
  , "Upton"
  , "Newton"
  ]
