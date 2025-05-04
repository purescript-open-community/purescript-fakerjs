module Fakerjs2.Locales.En.Animal.Bear (bear) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

bear = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "American black bear"
  , "Asian black bear"
  , "Brown bear"
  , "Giant panda"
  , "Polar bear"
  , "Sloth bear"
  , "Spectacled bear"
  , "Sun bear"
  ]
