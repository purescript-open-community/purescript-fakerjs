module Fakerjs2.Locales.Fr.Location.Direction (cardinal, cardinal_abbr, ordinal, ordinal_abbr) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

cardinal = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Nord", "Est", "Sud", "Ouest" ]

cardinal_abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "N", "E", "S", "O" ]

ordinal = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Nord-est", "Nord-ouest", "Sud-est", "Sud-ouest" ]

ordinal_abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "NE", "NO", "SE", "SO" ]
