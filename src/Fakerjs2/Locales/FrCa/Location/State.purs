module Fakerjs2.Locales.FrCa.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Unsafe.Coerce (unsafeCoerce)

state = (unsafeCoerce :: Array String -> NonEmptyArray String)
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
