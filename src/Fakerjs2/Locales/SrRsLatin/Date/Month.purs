module Fakerjs2.Locales.SrRsLatin.Date.Month (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Maybe (Maybe(..))
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

abbr = Just
  ( (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "apr", "avg", "dec", "feb", "jan", "jul", "jun", "maj", "mar", "nov", "okt", "sep" ]
  )

wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "april"
  , "avgust"
  , "decembar"
  , "februar"
  , "januar"
  , "jul"
  , "jun"
  , "maj"
  , "mart"
  , "novembar"
  , "oktobar"
  , "septembar"
  ]
