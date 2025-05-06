module Fakerjs2.Locales.KaGe.Person.Prefix (female, generic, male) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

female = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "ქ-ნი", "ქალბატონი" ]
generic = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "ბ-ნი", "ბატონი", "ქ-ნი", "ქალბატონი" ]

male = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "ბ-ნი", "ბატონი" ]
