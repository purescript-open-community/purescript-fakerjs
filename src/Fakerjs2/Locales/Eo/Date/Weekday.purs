module Fakerjs2.Locales.Eo.Date.Weekday (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Maybe (Maybe(..))
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

abbr = Just
  ( (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "di", "lu", "ma", "me", "sa", "ve", "ĵa" ]
  )

wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "dimanĉo", "lundo", "mardo", "merkredo", "sabato", "vendredo", "ĵaŭdo" ]
