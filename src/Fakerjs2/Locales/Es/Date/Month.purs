module Fakerjs2.Locales.Es.Date.Month (abbr, abbr_context, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (MonthAbbr, MonthAbbrContext, MonthWide)
import Unsafe.Coerce (unsafeCoerce)

abbr :: MonthAbbr
abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "abr", "ago", "dic", "ene", "feb", "jul", "jun", "mar", "may", "nov", "oct", "sep" ]

abbr_context :: MonthAbbrContext
abbr_context = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "abr.", "ag.", "dic.", "en.", "febr.", "jul.", "jun.", "my.", "mzo.", "nov.", "oct.", "sept." ]

wide :: MonthWide
wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "abril"
  , "agosto"
  , "diciembre"
  , "enero"
  , "febrero"
  , "julio"
  , "junio"
  , "marzo"
  , "mayo"
  , "noviembre"
  , "octubre"
  , "septiembre"
  ]
