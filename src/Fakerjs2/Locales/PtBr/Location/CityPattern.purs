module Fakerjs2.Locales.PtBr.Location.CityPattern (city_pattern) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

city_pattern = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "{{person.firstName}}{{location.city_suffix}}"
  , "{{person.last_name.generic}}{{location.city_suffix}}"
  ]
