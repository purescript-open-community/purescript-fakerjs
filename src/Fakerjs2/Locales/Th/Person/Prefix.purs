module Fakerjs2.Locales.Th.Person.Prefix (female, generic, male) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

female = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "ดร.", "ผศ.ดร.", "พญ." ]
generic = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "ดร.", "นพ.", "ผศ.ดร.", "พญ." ]

male = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "ดร.", "นพ.", "ผศ.ดร." ]
