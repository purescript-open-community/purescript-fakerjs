module Fakerjs2.Locales.Fa.Location.Direction (cardinal, cardinal_abbr, ordinal, ordinal_abbr) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

cardinal = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "شمال", "شرق", "جنوب", "غرب" ]

cardinal_abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "شمالی", "شرقی", "جنوبی", "غربی" ]

ordinal = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "شمال شرق", "شمال غرب", "جنوب شرق", "جنوب غرب" ]

ordinal_abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "شمال شرق", "شمال غرب", "جنوب شرق", "جنوب غرب" ]
