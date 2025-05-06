module Fakerjs2.Locales.De.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Unsafe.Coerce (unsafeCoerce)

state = (unsafeCoerce :: Array String -> NonEmptyArray String)
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
