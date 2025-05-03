module Fakerjs2.Locales.ZhCn.Location.StreetAddress (street_address) where

import Data.String.NonEmpty (unsafeFromString)
import Fakerjs2.Types (StreetAddress)

street_address :: StreetAddress
street_address =
  { normal: unsafeFromString "{{location.street}}{{location.buildingNumber}}号"
  , full: unsafeFromString
      "{{location.street}}{{location.buildingNumber}}号 {{location.secondaryAddress}}"
  }
