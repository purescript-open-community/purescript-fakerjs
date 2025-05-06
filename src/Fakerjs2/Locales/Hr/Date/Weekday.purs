module Fakerjs2.Locales.Hr.Date.Weekday (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Maybe (Maybe(..))
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

abbr = Just
  ( (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "ned", "pet", "pon", "sri", "sub", "uto", "čet" ]
  )

wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "nedjelja", "petak", "ponedjeljak", "srijeda", "subota", "utorak", "četvrtak" ]
