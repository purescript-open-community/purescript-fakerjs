module Fakerjs2.Locales.Ru.Date.Month (abbr, abbr_context, wide, wide_context) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (MonthAbbr, MonthAbbrContext, MonthWide, MonthWideContext)
import Unsafe.Coerce (unsafeCoerce)

abbr :: MonthAbbr
abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "авг."
  , "апр."
  , "дек."
  , "июль"
  , "июнь"
  , "май"
  , "март"
  , "нояб."
  , "окт."
  , "сент."
  , "февр."
  , "янв."
  ]

abbr_context :: MonthAbbrContext
abbr_context = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "авг."
  , "апр."
  , "дек."
  , "июля"
  , "июня"
  , "марта"
  , "мая"
  , "нояб."
  , "окт."
  , "сент."
  , "февр."
  , "янв."
  ]

wide :: MonthWide
wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "август"
  , "апрель"
  , "декабрь"
  , "июль"
  , "июнь"
  , "май"
  , "март"
  , "ноябрь"
  , "октябрь"
  , "сентябрь"
  , "февраль"
  , "январь"
  ]

wide_context :: MonthWideContext
wide_context = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "августа"
  , "апреля"
  , "декабря"
  , "июля"
  , "июня"
  , "марта"
  , "мая"
  , "ноября"
  , "октября"
  , "сентября"
  , "февраля"
  , "января"
  ]
