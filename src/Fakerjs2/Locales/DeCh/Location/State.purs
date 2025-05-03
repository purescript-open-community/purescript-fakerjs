module Fakerjs2.Locales.DeCh.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (State)
import Unsafe.Coerce (unsafeCoerce)

state :: State
state = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Aargau"
  , "Appenzell Ausserrhoden"
  , "Appenzell Innerrhoden"
  , "Basel-Land"
  , "Basel-Stadt"
  , "Bern"
  , "Freiburg"
  , "Genf"
  , "Glarus"
  , "Graubünden"
  , "Jura"
  , "Luzern"
  , "Neuenburg"
  , "Nidwalden"
  , "Obwalden"
  , "St. Gallen"
  , "Schaffhausen"
  , "Schwyz"
  , "Solothurn"
  , "Tessin"
  , "Thurgau"
  , "Uri"
  , "Waadt"
  , "Wallis"
  , "Zug"
  , "Zürich"
  ]
