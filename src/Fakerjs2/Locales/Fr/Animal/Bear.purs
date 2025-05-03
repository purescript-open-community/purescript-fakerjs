module Fakerjs2.Locales.Fr.Animal.Bear (bear) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Bear)
import Unsafe.Coerce (unsafeCoerce)

bear :: Bear
bear = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Ours blanc"
  , "Ours brun"
  , "Ours lippu"
  , "Ours noir"
  , "Ours à collier"
  , "Ours à lunettes"
  , "Panda géant"
  ]
