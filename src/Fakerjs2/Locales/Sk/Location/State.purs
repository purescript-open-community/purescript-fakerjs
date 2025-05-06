module Fakerjs2.Locales.Sk.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Unsafe.Coerce (unsafeCoerce)

state = (unsafeCoerce :: Array String -> NonEmptyArray String)
  [ "Banskobystrický"
  , "Bratislavský"
  , "Košický"
  , "Nitriansky"
  , "Prešovský"
  , "Trenčiansky"
  , "Trnavský"
  , "Žilinský"
  ]
