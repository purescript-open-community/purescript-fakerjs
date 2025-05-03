module Fakerjs2.Locales.Ar.Vehicle.Fuel (fuel) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Fuel)
import Unsafe.Coerce (unsafeCoerce)

fuel :: Fuel
fuel = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "بنزين", "ديزل", "كهربائي", "هجين" ]
