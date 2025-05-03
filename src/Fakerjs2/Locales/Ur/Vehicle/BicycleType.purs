module Fakerjs2.Locales.Ur.Vehicle.BicycleType (bicycle_type) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (BicycleType)
import Unsafe.Coerce (unsafeCoerce)

bicycle_type :: BicycleType
bicycle_type = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "سہراب سائکل", "چائنہ سائکل" ]
