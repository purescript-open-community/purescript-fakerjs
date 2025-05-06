module Fakerjs2.Locales.Hr.Person.Prefix (female, generic, male) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

female = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "dr.", "gđa", "gđa." ]
generic = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "dr.", "g.", "gđa", "gđa." ]

male = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "dr.", "g." ]
