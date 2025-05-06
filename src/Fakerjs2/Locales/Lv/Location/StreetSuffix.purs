module Fakerjs2.Locales.Lv.Location.StreetSuffix (street_suffix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

street_suffix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "iela", "bulvāris", "gatve", "gāte", "laukums", "dambis" ]
