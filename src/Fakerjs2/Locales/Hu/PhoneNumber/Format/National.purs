module Fakerjs2.Locales.Hu.PhoneNumber.Format.National (national) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

national = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "06 20 ### ####", "06 30 ### ####", "06 50 ### ####", "06 70 ### ####" ]
