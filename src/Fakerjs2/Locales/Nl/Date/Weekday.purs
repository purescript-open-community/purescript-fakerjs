module Fakerjs2.Locales.Nl.Date.Weekday (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Maybe (Maybe(..))
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

abbr = Just
  ( (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "di", "do", "ma", "vr", "wo", "za", "zo" ]
  )

wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "dinsdag", "donderdag", "maandag", "vrijdag", "woensdag", "zaterdag", "zondag" ]
