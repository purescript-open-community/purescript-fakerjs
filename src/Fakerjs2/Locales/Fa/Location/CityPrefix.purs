module Fakerjs2.Locales.Fa.Location.CityPrefix (city_prefix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

city_prefix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "شمال", "شرق", "غرب", "جنوب", "جدید", "جزیره" ]
