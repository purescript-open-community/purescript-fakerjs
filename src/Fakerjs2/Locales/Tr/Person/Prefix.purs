module Fakerjs2.Locales.Tr.Person.Prefix (female, generic, male) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

female = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Bayan", "Dr.", "Prof. Dr." ]

generic = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Bay", "Bayan", "Dr.", "Prof. Dr." ]

male = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "Bay", "Dr.", "Prof. Dr." ]
