module Fakerjs2.Locales.Dv.PhoneNumber.Format.National (national) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

national = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "3##-####", "4##-####", "5######", "6##-####", "7##-####", "8######", "9##-####" ]
