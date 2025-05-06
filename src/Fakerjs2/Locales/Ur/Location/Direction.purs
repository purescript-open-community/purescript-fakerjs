module Fakerjs2.Locales.Ur.Location.Direction (cardinal, cardinal_abbr, ordinal, ordinal_abbr) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

cardinal = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "شمال", "مشرق", "جنوب", "مغرب" ]

cardinal_abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "شمال", "مشرق", "جنوب", "مغرب" ]

ordinal = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "شمال مشرق", "سمال مغرب", "جنوب مشرق", "جنوب مغرب" ]

ordinal_abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "شمال مشرق", "سمال مغرب", "جنوب مشرق", "جنوب مغرب" ]
