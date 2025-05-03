module Fakerjs2.Locales.De.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (State)
import Unsafe.Coerce (unsafeCoerce)

state :: State
state = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Baden-Württemberg"
  , "Bayern"
  , "Berlin"
  , "Brandenburg"
  , "Bremen"
  , "Hamburg"
  , "Hessen"
  , "Mecklenburg-Vorpommern"
  , "Niedersachsen"
  , "Nordrhein-Westfalen"
  , "Rheinland-Pfalz"
  , "Saarland"
  , "Sachsen"
  , "Sachsen-Anhalt"
  , "Schleswig-Holstein"
  , "Thüringen"
  ]
