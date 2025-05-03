module Fakerjs2.Locales.PtBr.Location.StreetSuffix (street_suffix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (StreetSuffix)
import Unsafe.Coerce (unsafeCoerce)

street_suffix :: StreetSuffix
street_suffix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Rua", "Avenida", "Travessa", "Alameda", "Marginal", "Rodovia" ]
