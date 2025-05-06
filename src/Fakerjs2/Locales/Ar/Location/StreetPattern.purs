module Fakerjs2.Locales.Ar.Location.StreetPattern (street_pattern) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

street_pattern = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "{{location.street_prefix}} {{person.first_name.generic}}"
  , "{{location.street_prefix}} {{person.last_name.generic}}"
  ]
