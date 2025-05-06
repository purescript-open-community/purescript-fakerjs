module Fakerjs2.Locales.Dv.Location.CityPattern (city_pattern) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

city_pattern = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "{{location.city_prefix}} {{company.noun}}{{location.city_suffix}}"
  , "{{company.adjective}}{{company.noun}}{{location.city_suffix}}"
  , "{{location.city_prefix}} {{person.first_name.generic}}"
  , "{{person.first_name.generic}}{{location.city_suffix}}"
  , "{{person.last_name.generic}}{{location.city_suffix}}"
  , "{{location.city_name}}"
  ]
