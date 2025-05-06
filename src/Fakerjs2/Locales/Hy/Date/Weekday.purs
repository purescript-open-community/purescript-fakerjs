module Fakerjs2.Locales.Hy.Date.Weekday (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Maybe (Maybe(..))
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

abbr = Just
  ( (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "երկ", "երք", "կրկ", "հնգ", "շբթ", "ուրբ", "չրք" ]
  )

wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Երեքշաբթի", "Երկուշաբթի", "Կիրակի", "Հինգշաբթի", "Շաբաթ", "Ուրբաթ", "Չորեքշաբթի" ]
