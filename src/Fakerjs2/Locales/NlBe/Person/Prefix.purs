module Fakerjs2.Locales.NlBe.Person.Prefix (female, generic, male) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

female = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Dr.", "Ing.", "Ir.", "Prof." ]

generic = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Dr.", "Ing.", "Ir.", "Prof." ]

male = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Dr.", "Ing.", "Ir.", "Prof." ]
