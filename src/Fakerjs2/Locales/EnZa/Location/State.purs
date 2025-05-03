module Fakerjs2.Locales.EnZa.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (State)
import Unsafe.Coerce (unsafeCoerce)

state :: State
state = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Limpopo"
  , "Gauteng"
  , "Free State"
  , "North West"
  , "Northern Cape"
  , "Western Cape"
  , "KwaZulu-Natal"
  , "Mpumalanga"
  , "Eastern Cape"
  ]
