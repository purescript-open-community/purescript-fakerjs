module Fakerjs2.Locales.UzUzLatin.Date.Weekday (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Maybe (Maybe(..))
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

abbr = Just
  ( (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "Ch", "Du", "Ju", "Pa", "Se", "Sh", "Ya" ]
  )

wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Chorshanba", "Dushanba", "Juma", "Payshanba", "Seshanba", "Shanba", "Yakshanba" ]
