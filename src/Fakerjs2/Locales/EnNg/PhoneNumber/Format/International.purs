module Fakerjs2.Locales.EnNg.PhoneNumber.Format.International (international) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

international = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "+234803#######", "+234703#######", "+234809#######", "+234802#######", "+234805#######" ]
