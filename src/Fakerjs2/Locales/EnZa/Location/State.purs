module Fakerjs2.Locales.EnZa.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Unsafe.Coerce (unsafeCoerce)

state = (unsafeCoerce :: Array String -> NonEmptyArray String)
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
