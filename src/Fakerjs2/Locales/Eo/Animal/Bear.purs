module Fakerjs2.Locales.Eo.Animal.Bear (bear) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Bear)
import Unsafe.Coerce (unsafeCoerce)

bear :: Bear
bear = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "amerika nigra urso"
  , "azia nigra urso"
  , "blanka urso"
  , "bruna urso"
  , "granda pando"
  , "longlipa urso"
  , "malaja urso"
  , "okulvitra urso"
  ]
