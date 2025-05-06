module Fakerjs2.Locales.KaGe.Location.StreetSuffix (street_suffix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

street_suffix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "გამზ.", "გამზირი", "ქ.", "ქუჩა", "ჩიხი", "ხეივანი" ]
