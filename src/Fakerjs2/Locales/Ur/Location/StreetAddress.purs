module Fakerjs2.Locales.Ur.Location.StreetAddress (street_address) where

import Data.String.NonEmpty (unsafeFromString)
import Fakerjs2.Types (StreetAddress)

street_address :: StreetAddress
street_address =
  { normal: unsafeFromString "{{location.buildingNumber}} {{location.street}}"
  , full: unsafeFromString
      "{{location.buildingNumber}} {{location.street}} {{location.secondaryAddress}}"
  }
