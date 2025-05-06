module Fakerjs2.Locales.Ur.Location.CityPrefix (city_prefix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

city_prefix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "مشرق", "مغرب", "شمال", "جنوب", "نیا", "جھیل", "بندرگاہ" ]
