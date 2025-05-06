module Fakerjs2.Locales.EnCa.Location.StateAbbr (state_abbr) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

state_abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "AB", "BC", "MB", "NB", "NL", "NS", "NU", "NT", "ON", "PE", "QC", "SK", "YT" ]
