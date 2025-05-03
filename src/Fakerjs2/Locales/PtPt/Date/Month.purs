module Fakerjs2.Locales.PtPt.Date.Month (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (MonthAbbr, MonthWide)
import Unsafe.Coerce (unsafeCoerce)

abbr :: MonthAbbr
abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Abr", "Ago", "Dez", "Fev", "Jan", "Jul", "Jun", "Mai", "Mar", "Nov", "Out", "Set" ]

wide :: MonthWide
wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Abril"
  , "Agosto"
  , "Dezembro"
  , "Fevereiro"
  , "Janeiro"
  , "Julho"
  , "Junho"
  , "Maio"
  , "Março"
  , "Novembro"
  , "Outubro"
  , "Setembro"
  ]
