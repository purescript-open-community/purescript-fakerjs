module Fakerjs2.Locales.EnGh.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (State)
import Unsafe.Coerce (unsafeCoerce)

state :: State
state = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
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
