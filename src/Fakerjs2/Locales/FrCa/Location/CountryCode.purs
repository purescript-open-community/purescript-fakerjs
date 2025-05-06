module Fakerjs2.Locales.FrCa.Location.CountryCode (country_code) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

country_code =
  ( unsafeCoerce
      :: Array { alpha2 :: String, alpha3 :: String, numeric :: String }
      -> NonEmptyArray
           { alpha2 :: NonEmptyString, alpha3 :: NonEmptyString, numeric :: NonEmptyString }
  ) [ { alpha2: "CA", alpha3: "CAN", numeric: "124" } ]
