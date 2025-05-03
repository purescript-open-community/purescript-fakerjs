module Fakerjs2.Locales.En.Person.Prefix (female, generic, male) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (PrefixFemale, PrefixGeneric, PrefixMale)
import Unsafe.Coerce (unsafeCoerce)

female :: PrefixFemale
female = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Dr.", "Miss", "Mrs.", "Ms." ]

generic :: PrefixGeneric
generic = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Dr.", "Miss", "Mr.", "Mrs.", "Ms." ]

male :: PrefixMale
male = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "Dr.", "Mr." ]
