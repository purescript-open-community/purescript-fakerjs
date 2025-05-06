module Fakerjs2.Locales.He.Location.Direction (cardinal, cardinal_abbr, ordinal, ordinal_abbr) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

cardinal = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "צפון", "מזרח", "דרום", "מערב" ]

cardinal_abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "צ", "מז", "ד", "מע" ]

ordinal = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "צפון מזרח", "צפון מערב", "דרום מזרח", "דרום מערב" ]

ordinal_abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "צ-מז", "צ-מע", "ד-מז", "ד-מע" ]
