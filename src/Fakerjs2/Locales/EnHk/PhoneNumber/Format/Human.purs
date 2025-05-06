module Fakerjs2.Locales.EnHk.PhoneNumber.Format.Human (human) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

human = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "2### ####", "3### ####", "4### ####", "5### ####", "6### ####", "7### ####", "9### ####" ]
