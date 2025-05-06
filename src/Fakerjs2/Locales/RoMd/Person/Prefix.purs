module Fakerjs2.Locales.RoMd.Person.Prefix (female, generic, male) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

female = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "Dna", "Dra" ]
generic = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "Dl", "Dna", "Dra" ]
male = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "Dl", "Dra" ]
