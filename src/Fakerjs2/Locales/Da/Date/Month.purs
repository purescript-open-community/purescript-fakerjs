module Fakerjs2.Locales.Da.Date.Month (abbr, wide) where

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
      , "jul."
      , "jun."
      , "maj"
      , "mar."
      , "nov."
      , "okt."
      , "sep."
      ]
  )

wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "april"
  , "august"
  , "december"
  , "februar"
  , "januar"
  , "juli"
  , "juni"
  , "maj"
  , "marts"
  , "november"
  , "oktober"
  , "september"
  ]
