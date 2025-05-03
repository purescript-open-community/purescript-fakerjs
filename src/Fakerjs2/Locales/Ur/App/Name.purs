module Fakerjs2.Locales.Ur.App.Name (name) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Name)
import Unsafe.Coerce (unsafeCoerce)

name :: Name
name = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "اوقات نماز"
  , "قسط حساب"
  , "نقشہ نگار"
  , "دبی\x000657 وقت"
  , "ڈالر رپیہ"
  , "دراز"
  , "پاک وھیلز"
  , "واٹس ایپ"
  ]
