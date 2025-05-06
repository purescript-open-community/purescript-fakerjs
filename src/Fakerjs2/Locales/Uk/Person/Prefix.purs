module Fakerjs2.Locales.Uk.Person.Prefix (female, generic, male) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

female = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "Пані" ]
generic = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "Пан", "Пані" ]
male = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "Пан" ]
