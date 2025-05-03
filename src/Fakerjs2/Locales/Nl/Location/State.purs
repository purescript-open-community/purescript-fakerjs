module Fakerjs2.Locales.Nl.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (State)
import Unsafe.Coerce (unsafeCoerce)

state :: State
state = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
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
