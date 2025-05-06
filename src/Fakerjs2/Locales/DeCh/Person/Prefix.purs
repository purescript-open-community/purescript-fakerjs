module Fakerjs2.Locales.DeCh.Person.Prefix (female, generic, male) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

female = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Dr.", "Frau", "Prof. Dr." ]

generic = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Dr.", "Frau", "Herr", "Prof. Dr." ]

male = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Dr.", "Herr", "Prof. Dr." ]
