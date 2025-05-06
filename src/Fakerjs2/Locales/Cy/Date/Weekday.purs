module Fakerjs2.Locales.Cy.Date.Weekday (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Maybe (Maybe(..))
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

abbr = Just
  ( (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "Gwen", "Iau", "Llun", "Maw", "Mer", "Sad", "Sul" ]
  )

wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Gwener", "Iau", "Llun", "Mawrth", "Mercher", "Sadwrn", "Sul" ]
