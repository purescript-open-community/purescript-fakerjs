module Fakerjs2.Locales.AfZa.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Unsafe.Coerce (unsafeCoerce)

state = (unsafeCoerce :: Array String -> NonEmptyArray String)
  [ "Gauteng"
  , "KwaZulu-Natal"
  , "Limpopo"
  , "Mpumalanga"
  , "Noord-Kaap"
  , "Noordwes"
  , "Oos-Kaap"
  , "Vrystaat"
  , "Wes-Kaap"
  ]
