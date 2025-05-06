module Fakerjs2.Locales.Uk.Location.StreetPrefix (street_prefix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

street_prefix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "вул.", "вулиця", "пр.", "проспект", "пл.", "площа", "пров.", "провулок" ]
