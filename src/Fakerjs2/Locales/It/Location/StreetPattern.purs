module Fakerjs2.Locales.It.Location.StreetPattern (street_pattern) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (StreetPattern)
import Unsafe.Coerce (unsafeCoerce)

street_pattern :: StreetPattern
street_pattern = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "{{location.street_suffix}} {{person.first_name.generic}}"
  , "{{location.street_suffix}} {{person.last_name.generic}}"
  ]
