module Fakerjs2.Locales.Sv.Location.CommonStreetSuffix (common_street_suffix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (CommonStreetSuffix)
import Unsafe.Coerce (unsafeCoerce)

common_street_suffix :: CommonStreetSuffix
common_street_suffix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "s Väg", "s Gata" ]
