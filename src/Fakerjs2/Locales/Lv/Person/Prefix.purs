module Fakerjs2.Locales.Lv.Person.Prefix (female, generic, male) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

female = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Biedrs", "Dr.", "Prof." ]

generic = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Biedrs", "Dr.", "Prof." ]

male = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "Biedrs", "Dr.", "Prof." ]
