module Fakerjs2.Locales.Ur.Person.Prefix (female, generic, male) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

female = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "محترمہ.", "ڈاکٹر" ]
generic = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "محترم.", "محترمہ.", "ڈاکٹر" ]

male = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "محترم.", "ڈاکٹر" ]
