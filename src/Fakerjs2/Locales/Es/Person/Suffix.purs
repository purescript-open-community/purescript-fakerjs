module Fakerjs2.Locales.Es.Person.Suffix (suffix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

suffix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Jr.", "Sr.", "I", "II", "III", "IV", "V", "MD", "DDS", "PhD", "DVM" ]
