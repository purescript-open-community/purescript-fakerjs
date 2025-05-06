module Fakerjs2.Locales.Fr.Animal.Bear (bear) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

bear = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Ours blanc"
  , "Ours brun"
  , "Ours lippu"
  , "Ours noir"
  , "Ours à collier"
  , "Ours à lunettes"
  , "Panda géant"
  ]
