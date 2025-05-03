module Fakerjs2.Locales.EnAu.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (State)
import Unsafe.Coerce (unsafeCoerce)

state :: State
state = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "New South Wales"
  , "Queensland"
  , "Northern Territory"
  , "South Australia"
  , "Western Australia"
  , "Tasmania"
  , "Australian Capital Territory"
  , "Victoria"
  ]
