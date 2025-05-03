module Fakerjs2.Locales.Dv.Location.StreetSuffix (street_suffix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (StreetSuffix)
import Unsafe.Coerce (unsafeCoerce)

street_suffix :: StreetSuffix
street_suffix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "ހ\x0007a8ނގ\x0007aaނ\x0007b0", "މ\x0007a6ގ\x0007aa", "ގ\x0007afޅ\x0007a8" ]
