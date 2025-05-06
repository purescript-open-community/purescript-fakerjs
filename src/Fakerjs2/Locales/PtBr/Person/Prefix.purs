module Fakerjs2.Locales.PtBr.Person.Prefix (female, generic, male) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

female = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "Dra.", "Sra.", "Srta." ]
generic = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Dr.", "Dra.", "Sr.", "Sra.", "Srta." ]

male = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "Dr.", "Sr." ]
