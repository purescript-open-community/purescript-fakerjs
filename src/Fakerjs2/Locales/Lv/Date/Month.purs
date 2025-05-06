module Fakerjs2.Locales.Lv.Date.Month (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Maybe (Maybe(..))
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

abbr = Just
  ( (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "apr."
      , "aug."
      , "dec."
      , "feb."
      , "jan."
      , "jūl."
      , "jūn."
      , "mai."
      , "mar."
      , "nov."
      , "okt."
      , "sep."
      ]
  )

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
