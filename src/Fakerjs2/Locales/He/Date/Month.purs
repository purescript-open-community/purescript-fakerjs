module Fakerjs2.Locales.He.Date.Month (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Maybe (Maybe(..))
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

abbr = Just
  ( (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "Apr", "Aug", "Dec", "Feb", "Jan", "Jul", "Jun", "Mar", "May", "Nov", "Oct", "Sep" ]
  )

wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "אוגוסט"
  , "אוקטובר"
  , "אפריל"
  , "דצמבר"
  , "יולי"
  , "יוני"
  , "ינואר"
  , "מאי"
  , "מרץ"
  , "נובמבר"
  , "ספטמבר"
  , "פברואר"
  ]
