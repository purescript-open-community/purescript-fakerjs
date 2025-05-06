module Fakerjs2.Locales.UzUzLatin.Date.Month (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Maybe (Maybe(..))
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

abbr = Just
  ( (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "Apr.", "Avg.", "Dek.", "Fev.", "Iyl", "Iyn", "Mar", "May", "Noy.", "Okt.", "Sen.", "Yan." ]
  )

wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Aprel"
  , "Avgust"
  , "Dekabr"
  , "Fevral"
  , "Iyul"
  , "Iyun"
  , "Mart"
  , "May"
  , "Noyabr"
  , "Oktyabr"
  , "Sentyabr"
  , "Yanvar"
  ]
