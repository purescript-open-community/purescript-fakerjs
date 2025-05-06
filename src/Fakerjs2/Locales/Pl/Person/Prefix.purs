module Fakerjs2.Locales.Pl.Person.Prefix (female, generic, male) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

female = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "Pani" ]
generic = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "Pan", "Pani" ]
male = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "Pan" ]
