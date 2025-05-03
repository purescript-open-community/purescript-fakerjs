module Fakerjs2.Locales.Tr.Person.Prefix (female, generic, male) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (PrefixFemale, PrefixGeneric, PrefixMale)
import Unsafe.Coerce (unsafeCoerce)

female :: PrefixFemale
female = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Bayan", "Dr.", "Prof. Dr." ]

generic :: PrefixGeneric
generic = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Bay", "Bayan", "Dr.", "Prof. Dr." ]

male :: PrefixMale
male = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "Bay", "Dr.", "Prof. Dr." ]
