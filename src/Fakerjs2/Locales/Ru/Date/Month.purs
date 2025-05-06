module Fakerjs2.Locales.Ru.Date.Month (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Maybe (Maybe(..))
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

abbr = Just
  ( (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
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
  )

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
