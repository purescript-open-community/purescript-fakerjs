module Fakerjs2.Locales.Th.PhoneNumber.Format.Human (human) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

human = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "06 #### ####", "08 #### ####", "09 #### ####", "0 2### ####", "0 5!## ####" ]
