module Fakerjs2.Locales.FrBe.Person.Prefix (female, generic, male) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

female = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Dr", "Mlle", "Mme", "Prof" ]

generic = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Dr", "M", "Mlle", "Mme", "Prof" ]

male = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "Dr", "M", "Prof" ]
