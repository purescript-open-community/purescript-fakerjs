module Fakerjs2.Locales.PtPt.PhoneNumber.Format.Human (human) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

human = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "+351 2########", "+351 91#######", "+351 92#######", "+351 93#######", "+351 96#######" ]
