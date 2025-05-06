module Fakerjs2.Locales.Eo.Vehicle.Fuel (fuel) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

fuel = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "benzina", "dizela", "elektra", "hibrida" ]
