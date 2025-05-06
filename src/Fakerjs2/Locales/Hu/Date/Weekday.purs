module Fakerjs2.Locales.Hu.Date.Weekday (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Maybe (Maybe(..))
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

abbr = Just
  ( (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "Csüt", "Hé", "Ke", "Pé", "Sze", "Szo", "Va" ]
  )

wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "csütörtök", "hétfő", "kedd", "péntek", "szerda", "szombat", "vasárnap" ]
