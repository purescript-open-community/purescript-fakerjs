module Fakerjs2.Locales.EnGb.Location.CityPattern (city_pattern) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

city_pattern = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "{{location.city_prefix}} {{person.last_name.generic}}{{location.city_suffix}}"
  , "{{location.city_prefix}} {{person.last_name.generic}}"
  , "{{person.last_name.generic}}{{location.city_suffix}}"
  , "{{person.last_name.generic}}{{location.city_infix}}{{person.last_name.generic}}"
  ]
