module Fakerjs2.Locales.Ar.Person.Prefix (female, generic, male) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

female = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "آنسة", "بروفيسور", "دكتور", "سيدة" ]

generic = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "آنسة", "بروفيسور", "دكتور", "سيد", "سيدة" ]

male = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "بروفيسور", "دكتور", "سيد" ]
