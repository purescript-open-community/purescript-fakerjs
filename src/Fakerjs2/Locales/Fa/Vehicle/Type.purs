module Fakerjs2.Locales.Fa.Vehicle.Type (type_) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

type_ = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "استیشن", "سدان", "شاسی بلند", "مینی ون", "ون", "ون مسافرتی", "پیکاپ", "کوپه" ]
