module Fakerjs2.Locales.Ja.Location.StreetAddress (street_address) where

import Data.String.NonEmpty (unsafeFromString)
import Fakerjs2.Types (StreetAddress)

street_address :: StreetAddress
street_address =
  { normal: unsafeFromString "{{location.street}}"
  , full: unsafeFromString "{{location.street}} {{location.secondaryAddress}}"
  }
