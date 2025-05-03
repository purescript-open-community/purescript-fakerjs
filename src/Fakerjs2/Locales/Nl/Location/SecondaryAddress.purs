module Fakerjs2.Locales.Nl.Location.SecondaryAddress (secondary_address) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (SecondaryAddress)
import Unsafe.Coerce (unsafeCoerce)

secondary_address :: SecondaryAddress
secondary_address = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "1 hoog", "2 hoog", "3 hoog", "3 hoog achter" ]
