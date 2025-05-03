module Fakerjs2.Locales.EsMx.Person.Prefix (female, generic, male) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (PrefixFemale, PrefixGeneric, PrefixMale)
import Unsafe.Coerce (unsafeCoerce)

female :: PrefixFemale
female = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "Sra.", "Sta." ]

generic :: PrefixGeneric
generic = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "Sr.", "Sra.", "Sta." ]

male :: PrefixMale
male = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "Sr." ]
