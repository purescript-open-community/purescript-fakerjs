module Fakerjs2.Locales.Nl.Person.Prefix (female, generic, male) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (PrefixFemale, PrefixGeneric, PrefixMale)
import Unsafe.Coerce (unsafeCoerce)

female :: PrefixFemale
female = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Bsc", "Dr.", "Drs.", "Ir.", "Mevr.", "Msc", "Prof." ]

generic :: PrefixGeneric
generic = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Bsc", "Dhr.", "Dr.", "Drs.", "Ir.", "Mevr.", "Msc", "Prof." ]

male :: PrefixMale
male = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Bsc", "Dhr.", "Dr.", "Drs.", "Ir.", "Msc", "Prof." ]
