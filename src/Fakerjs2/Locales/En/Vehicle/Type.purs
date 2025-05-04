module Fakerjs2.Locales.En.Vehicle.Type (type_) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

type_ = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Cargo Van"
  , "Convertible"
  , "Coupe"
  , "Crew Cab Pickup"
  , "Extended Cab Pickup"
  , "Hatchback"
  , "Minivan"
  , "Passenger Van"
  , "SUV"
  , "Sedan"
  , "Wagon"
  ]
