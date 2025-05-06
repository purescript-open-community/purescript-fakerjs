module Fakerjs2.Locales.Ur.Vehicle.Fuel (fuel) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

fuel = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "بجلی", "شمسی", "پیٹرول", "ڈیزل" ]
