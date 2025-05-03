module Fakerjs2.Locales.EnCa.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (State)
import Unsafe.Coerce (unsafeCoerce)

state :: State
state = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Alberta"
  , "British Columbia"
  , "Manitoba"
  , "New Brunswick"
  , "Newfoundland and Labrador"
  , "Nova Scotia"
  , "Northwest Territories"
  , "Nunavut"
  , "Ontario"
  , "Prince Edward Island"
  , "Quebec"
  , "Saskatchewan"
  , "Yukon"
  ]
