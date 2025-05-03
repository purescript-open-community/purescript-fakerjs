module Fakerjs2.Locales.DeCh.Location.CountryCode (country_code) where

import Data.String.NonEmpty (unsafeFromString)
import Fakerjs2.Types (CountryCode)

country_code :: CountryCode
country_code =
  [ { alpha3: unsafeFromString "CHE"
    , alpha2: unsafeFromString "CH"
    , numeric: unsafeFromString "756"
    }
  , { alpha3: unsafeFromString "DEU"
    , alpha2: unsafeFromString "DE"
    , numeric: unsafeFromString "276"
    }
  , { alpha3: unsafeFromString "AUT"
    , alpha2: unsafeFromString "AT"
    , numeric: unsafeFromString "040"
    }
  ]
