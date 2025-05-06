module Fakerjs2.Locales.Ur.Animal.Type (type_) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

type_ = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "bear", "cow", "crocodilia", "insect", "lion" ]
