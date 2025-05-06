module Fakerjs2.Locales.Es.Person.Prefix (female, generic, male) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

female = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "Sra.", "Sta." ]
generic = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "Sr.", "Sra.", "Sta." ]
male = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "Sr." ]
