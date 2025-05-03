module Fakerjs2.Locales.DeAt.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (State)
import Unsafe.Coerce (unsafeCoerce)

state :: State
state = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Burgenland"
  , "Kärnten"
  , "Niederösterreich"
  , "Oberösterreich"
  , "Salzburg"
  , "Steiermark"
  , "Tirol"
  , "Vorarlberg"
  , "Wien"
  ]
