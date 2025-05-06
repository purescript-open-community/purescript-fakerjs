module Fakerjs2.Locales.Mk.Date.Month (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Maybe (Maybe(..))
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

abbr = Just
  ( (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "авг", "апр", "дек", "мар", "мај", "ное", "окт", "сеп", "фев", "јан", "јул", "јун" ]
  )

wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "август"
  , "април"
  , "декември"
  , "март"
  , "мај"
  , "ноември"
  , "октомври"
  , "септември"
  , "февруари"
  , "јануари"
  , "јули"
  , "јуни"
  ]
