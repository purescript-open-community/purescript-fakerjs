module Fakerjs2.Locales.Az.Date.Month (abbr, wide) where

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
  [ "aprel"
  , "avqust"
  , "dekabr"
  , "fevral"
  , "iyul"
  , "iyun"
  , "mart"
  , "may"
  , "noyabr"
  , "oktyabr"
  , "sentyabr"
  , "yanvar"
  ]
