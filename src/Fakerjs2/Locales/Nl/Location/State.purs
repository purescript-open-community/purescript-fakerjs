module Fakerjs2.Locales.Nl.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Unsafe.Coerce (unsafeCoerce)

state = (unsafeCoerce :: Array String -> NonEmptyArray String)
  [ "Drenthe"
  , "Flevoland"
  , "Friesland"
  , "Gelderland"
  , "Groningen"
  , "Limburg"
  , "Noord-Brabant"
  , "Noord-Holland"
  , "Overijssel"
  , "Utrecht"
  , "Zeeland"
  , "Zuid-Holland"
  ]
