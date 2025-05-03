module Fakerjs2.Locales.EnNg.PhoneNumber.Format.National (national) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (National)
import Unsafe.Coerce (unsafeCoerce)

national :: National
national = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "0803 ### ####", "0703 ### ####", "0809 ### ####", "0802 ### ####", "0805 ### ####" ]
