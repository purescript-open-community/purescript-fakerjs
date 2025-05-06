module Fakerjs2.Locales.Da.Location.Direction (cardinal, cardinal_abbr, ordinal, ordinal_abbr) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

cardinal = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Nord", "Øst", "Syd", "Vest" ]

cardinal_abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "N", "Ø", "S", "V" ]

ordinal = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Nordøst", "Nordvest", "Sydøst", "Sydvest" ]

ordinal_abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "NØ", "NV", "SØ", "SV" ]
