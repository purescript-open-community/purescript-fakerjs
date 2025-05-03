module Fakerjs2.Locales.Fa.Location.StreetPrefix (street_prefix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (StreetPrefix)
import Unsafe.Coerce (unsafeCoerce)

street_prefix :: StreetPrefix
street_prefix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "خیابان", "کوچه", "بن بست", "بلوار" ]
