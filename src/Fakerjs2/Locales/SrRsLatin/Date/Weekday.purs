module Fakerjs2.Locales.SrRsLatin.Date.Weekday (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Maybe (Maybe(..))
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

abbr = Just
  ( (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "ned", "pet", "pon", "sre", "sub", "uto", "čet" ]
  )

wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "nedelja", "petak", "ponedeljak", "sreda", "subota", "utorak", "četvrtak" ]
