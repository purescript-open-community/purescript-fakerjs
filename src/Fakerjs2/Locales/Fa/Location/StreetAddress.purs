module Fakerjs2.Locales.Fa.Location.StreetAddress (street_address) where

import Data.String.NonEmpty (unsafeFromString)
import Fakerjs2.Types (StreetAddress)

street_address :: StreetAddress
street_address =
  { normal: unsafeFromString "{{location.street}}, پلاک {{location.buildingNumber}}"
  , full: unsafeFromString
      "{{location.street}}, پلاک {{location.buildingNumber}}  {{location.secondaryAddress}}"
  }
