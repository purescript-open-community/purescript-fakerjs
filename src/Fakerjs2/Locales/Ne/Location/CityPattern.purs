module Fakerjs2.Locales.Ne.Location.CityPattern (city_pattern) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

city_pattern = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "{{location.city_name}}" ]
