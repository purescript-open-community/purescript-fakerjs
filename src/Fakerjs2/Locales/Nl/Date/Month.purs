module Fakerjs2.Locales.Nl.Date.Month (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Maybe (Maybe(..))
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

abbr = Just
  ( (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "apr", "aug", "dec", "feb", "jan", "jul", "jun", "mei", "mrt", "nov", "okt", "sep" ]
  )

wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "april"
  , "augustus"
  , "december"
  , "februari"
  , "januari"
  , "juli"
  , "juni"
  , "maart"
  , "mei"
  , "november"
  , "oktober"
  , "september"
  ]
