module Fakerjs2.Locales.NbNo.Location.StreetPattern (street_pattern) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

street_pattern = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "{{location.street_name}}{{location.street_suffix}}"
  , "{{location.street_prefix}} {{location.street_name}}{{location.street_suffix}}"
  , "{{person.first_name.generic}}{{location.common_street_suffix}}"
  , "{{person.last_name.generic}}{{location.common_street_suffix}}"
  ]
