module Fakerjs2.Locales.Da.Person.Prefix (female, generic, male) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

female = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "fr." ]
generic = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "fr.", "hr." ]
male = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "hr." ]
