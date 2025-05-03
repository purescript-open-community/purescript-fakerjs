module Fakerjs2.Locales.Sk.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (State)
import Unsafe.Coerce (unsafeCoerce)

state :: State
state = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Banskobystrický"
  , "Bratislavský"
  , "Košický"
  , "Nitriansky"
  , "Prešovský"
  , "Trenčiansky"
  , "Trnavský"
  , "Žilinský"
  ]
