module Fakerjs2.Locales.Es.Location.StreetPattern (street_pattern) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

street_pattern = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "{{location.street_suffix}} {{person.firstName}}"
  , "{{location.street_suffix}} {{person.firstName}} {{person.last_name.generic}}"
  ]
