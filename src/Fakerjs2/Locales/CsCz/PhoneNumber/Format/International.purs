module Fakerjs2.Locales.CsCz.PhoneNumber.Format.International (international) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

international = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "+420601######", "+420737######", "+420736######", "+420#########" ]
