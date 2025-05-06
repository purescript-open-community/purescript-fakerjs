module Fakerjs2.Locales.Eo.Person.Prefix (female, generic, male) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

female = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "d-ino", "d-ro", "prof.", "s-ino" ]

generic = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "d-ino", "d-ro", "prof.", "s-ino", "s-ro" ]

male = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "d-ro", "prof.", "s-ro" ]
