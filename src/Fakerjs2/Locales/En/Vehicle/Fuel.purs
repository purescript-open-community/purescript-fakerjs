module Fakerjs2.Locales.En.Vehicle.Fuel (fuel) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Fuel)
import Unsafe.Coerce (unsafeCoerce)

fuel :: Fuel
fuel = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Diesel", "Electric", "Gasoline", "Hybrid" ]
