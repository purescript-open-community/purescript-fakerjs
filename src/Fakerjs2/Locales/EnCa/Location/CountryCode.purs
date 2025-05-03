module Fakerjs2.Locales.EnCa.Location.CountryCode (country_code) where

import Data.String.NonEmpty (unsafeFromString)
import Fakerjs2.Types (CountryCode)

country_code :: CountryCode
country_code =
  [ { alpha3: unsafeFromString "CAN"
    , alpha2: unsafeFromString "CA"
    , numeric: unsafeFromString "124"
    }
  ]
