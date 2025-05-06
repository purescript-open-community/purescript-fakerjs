module Fakerjs2.Locales.En.Person.Prefix (female, generic, male) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

female = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Dr.", "Miss", "Mrs.", "Ms." ]

generic = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Dr.", "Miss", "Mr.", "Mrs.", "Ms." ]

male = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "Dr.", "Mr." ]
