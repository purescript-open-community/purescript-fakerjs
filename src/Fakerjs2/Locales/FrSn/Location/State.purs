module Fakerjs2.Locales.FrSn.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (State)
import Unsafe.Coerce (unsafeCoerce)

state :: State
state = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Dakar"
  , "Diourbel"
  , "Fatick"
  , "Kaffrine"
  , "Kaolack"
  , "Kolda"
  , "Kédougou"
  , "Louga"
  , "Matam"
  , "Saint-Louis"
  , "Sédhiou"
  , "Tambacounda"
  , "Thiès"
  , "Ziguinchor"
  ]
