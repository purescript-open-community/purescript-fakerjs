module Fakerjs2.Locales.En.Food.Meat (meat) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

meat = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "beef"
  , "chicken"
  , "crocodile"
  , "duck"
  , "emu"
  , "goose"
  , "kangaroo"
  , "lamb"
  , "ostrich"
  , "pigeon"
  , "pork"
  , "quail"
  , "rabbit"
  , "salmon"
  , "turkey"
  , "venison"
  ]
