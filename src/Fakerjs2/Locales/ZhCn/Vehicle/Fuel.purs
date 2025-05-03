module Fakerjs2.Locales.ZhCn.Vehicle.Fuel (fuel) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Fuel)
import Unsafe.Coerce (unsafeCoerce)

fuel :: Fuel
fuel = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "柴油", "汽油", "混合动力", "电动" ]
