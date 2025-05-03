module Fakerjs2.Locales.Lv.Date.Month (abbr, abbr_context, wide, wide_context) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (MonthAbbr, MonthAbbrContext, MonthWide, MonthWideContext)
import Unsafe.Coerce (unsafeCoerce)

abbr :: MonthAbbr
abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "apr.", "aug.", "dec.", "feb.", "jan.", "jūl.", "jūn.", "mai.", "mar.", "nov.", "okt.", "sep." ]

abbr_context :: MonthAbbrContext
abbr_context = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "apr."
  , "aug."
  , "dec."
  , "febr."
  , "janv."
  , "jūl."
  , "jūn."
  , "mai."
  , "mar."
  , "nov."
  , "okt."
  , "sept."
  ]

wide :: MonthWide
wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "aprīlis"
  , "augusts"
  , "decembris"
  , "februāris"
  , "janvāris"
  , "jūlijs"
  , "jūnijs"
  , "maijs"
  , "marts"
  , "novembris"
  , "oktobris"
  , "septembris"
  ]

wide_context :: MonthWideContext
wide_context = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "aprīlī"
  , "augustā"
  , "decembrī"
  , "februārī"
  , "janvārī"
  , "jūlijā"
  , "jūnijā"
  , "maijā"
  , "martā"
  , "novembrī"
  , "oktobrī"
  , "septembrī"
  ]
