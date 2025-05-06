module Fakerjs2.Locales.FrSn.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Unsafe.Coerce (unsafeCoerce)

state = (unsafeCoerce :: Array String -> NonEmptyArray String)
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
