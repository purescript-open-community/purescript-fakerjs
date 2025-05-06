module Fakerjs2.Locales.EnHk.Location.StreetSuffix (street_suffix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

street_suffix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Street", "Road", "Lane", "Path", "Terrace", "Avenue", "Drive", "Crescent", "Court" ]
