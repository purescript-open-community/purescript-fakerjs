module Fakerjs2.Locales.FrCh.Location.CountryCode (country_code) where

import Data.String.NonEmpty (unsafeFromString)
import Fakerjs2.Types (CountryCode)

country_code :: CountryCode
country_code =
  [ { alpha3: unsafeFromString "CHE"
    , alpha2: unsafeFromString "CH"
    , numeric: unsafeFromString "756"
    }
  ]
