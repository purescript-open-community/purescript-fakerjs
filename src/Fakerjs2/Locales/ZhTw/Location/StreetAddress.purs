module Fakerjs2.Locales.ZhTw.Location.StreetAddress (street_address) where

import Data.String.NonEmpty (unsafeFromString)
import Fakerjs2.Types (StreetAddress)

street_address :: StreetAddress
street_address =
  { normal: unsafeFromString "{{location.street}}{{location.buildingNumber}}號"
  , full: unsafeFromString
      "{{location.street}}{{location.buildingNumber}}號 {{location.secondaryAddress}}"
  }
