module Fakerjs2.Locales.It.Person.Prefix (female, generic, male) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

female = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Dott.", "Dr.", "Ing.", "Sig." ]

generic = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Dott.", "Dr.", "Ing.", "Sig." ]

male = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Dott.", "Dr.", "Ing.", "Sig." ]
