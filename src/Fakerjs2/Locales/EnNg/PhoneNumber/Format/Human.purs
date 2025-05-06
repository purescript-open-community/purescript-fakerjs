module Fakerjs2.Locales.EnNg.PhoneNumber.Format.Human (human) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

human = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "0803 ### ####", "0703 ### ####", "234809 ### ####", "+234 802 ### ####", "0805### ####" ]
