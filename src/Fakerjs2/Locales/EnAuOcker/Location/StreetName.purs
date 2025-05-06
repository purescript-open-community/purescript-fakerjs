module Fakerjs2.Locales.EnAuOcker.Location.StreetName (street_name) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

street_name = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Ramsay Street", "Bonnie Doon", "Cavill Avenue", "Queen Street" ]
