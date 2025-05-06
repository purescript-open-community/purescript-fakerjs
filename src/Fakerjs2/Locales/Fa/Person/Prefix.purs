module Fakerjs2.Locales.Fa.Person.Prefix (female, generic, male) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

female = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "خانم", "دکتر" ]
generic = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "آقای", "خانم", "دکتر" ]
male = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "آقای", "دکتر" ]
