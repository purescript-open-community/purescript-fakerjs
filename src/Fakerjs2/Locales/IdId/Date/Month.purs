module Fakerjs2.Locales.IdId.Date.Month (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (MonthAbbr, MonthWide)
import Unsafe.Coerce (unsafeCoerce)

abbr :: MonthAbbr
abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Ags", "Apr", "Des", "Feb", "Jan", "Jul", "Jun", "Mar", "Mei", "Nov", "Okt", "Sep" ]

wide :: MonthWide
wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Agustus"
  , "April"
  , "Desember"
  , "Februari"
  , "Januari"
  , "Juli"
  , "Juni"
  , "Maret"
  , "Mei"
  , "November"
  , "Oktober"
  , "September"
  ]
