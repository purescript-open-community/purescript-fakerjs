module Fakerjs2.Locales.El.Person.Prefix (female, generic, male) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

female = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "Δόκτορ", "Κυρία" ]
generic = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Δόκτορ", "Κυρία", "Κύριος" ]

male = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "Δόκτορ", "Κύριος" ]
