module Fakerjs2.Locales.Az.Location.StreetPattern (street_pattern) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

street_pattern = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "{{location.street_suffix}} {{location.street_name}}"
  , "{{location.street_name}} {{location.street_suffix}}"
  ]
