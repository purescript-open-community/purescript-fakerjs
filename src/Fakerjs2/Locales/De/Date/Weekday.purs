module Fakerjs2.Locales.De.Date.Weekday (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Maybe (Maybe(..))
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

abbr = Just
  ( (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "Di.", "Do.", "Fr.", "Mi.", "Mo.", "Sa.", "So." ]
  )

wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Dienstag", "Donnerstag", "Freitag", "Mittwoch", "Montag", "Samstag", "Sonntag" ]
