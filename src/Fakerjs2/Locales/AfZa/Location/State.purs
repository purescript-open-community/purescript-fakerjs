module Fakerjs2.Locales.AfZa.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (State)
import Unsafe.Coerce (unsafeCoerce)

state :: State
state = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
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
