module Fakerjs2.Locales.DeCh.Location.CountryCode (country_code) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

country_code =
  ( unsafeCoerce
      :: Array { alpha2 :: String, alpha3 :: String, numeric :: String }
      -> NonEmptyArray
           { alpha2 :: NonEmptyString, alpha3 :: NonEmptyString, numeric :: NonEmptyString }
  )
    [ { alpha2: "CH", alpha3: "CHE", numeric: "756" }
    , { alpha2: "DE", alpha3: "DEU", numeric: "276" }
    , { alpha2: "AT", alpha3: "AUT", numeric: "040" }
    ]
