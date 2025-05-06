module Fakerjs2.Locales.EnGh.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Unsafe.Coerce (unsafeCoerce)

state = (unsafeCoerce :: Array String -> NonEmptyArray String)
  [ "Ashanti"
  , "Brong Ahafo"
  , "Bono East"
  , "Ahafo"
  , "Central"
  , "Eastern"
  , "Greater Accra"
  , "Northern"
  , "Savannah"
  , "North East"
  , "Upper East"
  , "Upper West"
  , "Volta"
  , "Oti"
  , "Western"
  , "Western North"
  ]
