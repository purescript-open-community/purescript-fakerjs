module Fakerjs2.Locales.Ja.Location.Direction (cardinal, cardinal_abbr, ordinal, ordinal_abbr) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

cardinal = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "北", "東", "南", "西" ]
cardinal_abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "北", "東", "南", "西" ]

ordinal = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString) [ "北東", "北西", "南東", "南西" ]
ordinal_abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "北東", "北西", "南東", "南西" ]
