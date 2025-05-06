module Fakerjs2.Locales.Sv.Person.Prefix (female, generic, male) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

female = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "Dr.", "PhD.", "Prof." ]
generic = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "Dr.", "PhD.", "Prof." ]
male = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "Dr.", "PhD.", "Prof." ]
