module Fakerjs2.Locales.Th.PhoneNumber.Format.International (international) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

international = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "+666########", "+668########", "+669########", "+662#######", "+665!######" ]
