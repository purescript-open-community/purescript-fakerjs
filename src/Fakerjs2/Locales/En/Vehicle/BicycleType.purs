module Fakerjs2.Locales.En.Vehicle.BicycleType (bicycle_type) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

bicycle_type = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Adventure Road Bicycle"
  , "BMX Bicycle"
  , "City Bicycle"
  , "Cruiser Bicycle"
  , "Cyclocross Bicycle"
  , "Dual-Sport Bicycle"
  , "Fitness Bicycle"
  , "Flat-Foot Comfort Bicycle"
  , "Folding Bicycle"
  , "Hybrid Bicycle"
  , "Mountain Bicycle"
  , "Recumbent Bicycle"
  , "Road Bicycle"
  , "Tandem Bicycle"
  , "Touring Bicycle"
  , "Track/Fixed-Gear Bicycle"
  , "Triathlon/Time Trial Bicycle"
  , "Tricycle"
  ]
