module Fakerjs2.Locales.Fa.Location.CitySuffix (city_suffix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (CitySuffix)
import Unsafe.Coerce (unsafeCoerce)

city_suffix :: CitySuffix
city_suffix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "روستا", "شهر", "دهکده", "بندر", "دژ", "بندرگاه", "ناحیه" ]
