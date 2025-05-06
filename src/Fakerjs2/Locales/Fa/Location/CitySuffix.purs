module Fakerjs2.Locales.Fa.Location.CitySuffix (city_suffix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Unsafe.Coerce (unsafeCoerce)

city_suffix = (unsafeCoerce :: Array String -> NonEmptyArray String)
  [ "روستا", "شهر", "دهکده", "بندر", "دژ", "بندرگاه", "ناحیه" ]
