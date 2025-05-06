module Fakerjs2.Locales.EnHk.PhoneNumber.Format.National (national) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

national = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "2### ####", "3### ####", "4### ####", "5### ####", "6### ####", "7### ####", "9### ####" ]
