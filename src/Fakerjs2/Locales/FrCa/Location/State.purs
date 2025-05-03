module Fakerjs2.Locales.FrCa.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (State)
import Unsafe.Coerce (unsafeCoerce)

state :: State
state = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Alberta"
  , "Colombie-Britannique"
  , "Manitoba"
  , "Nouveau-Brunswick"
  , "Terre-Neuve-et-Labrador"
  , "Nouvelle-Écosse"
  , "Territoires du Nord-Ouest"
  , "Nunavut"
  , "Ontario"
  , "Île-du-Prince-Édouard"
  , "Québec"
  , "Saskatchewan"
  , "Yukon"
  ]
