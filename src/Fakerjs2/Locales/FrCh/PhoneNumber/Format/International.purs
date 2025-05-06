module Fakerjs2.Locales.FrCh.PhoneNumber.Format.International (international) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

international = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "+41800######", "+41#########", "+41900######", "+4176#######", "+4179#######", "+4178#######" ]
