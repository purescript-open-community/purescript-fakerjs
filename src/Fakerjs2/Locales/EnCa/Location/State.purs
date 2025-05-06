module Fakerjs2.Locales.EnCa.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Unsafe.Coerce (unsafeCoerce)

state = (unsafeCoerce :: Array String -> NonEmptyArray String)
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
