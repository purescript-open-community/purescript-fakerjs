module Fakerjs2.Locales.De.Date.Month (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Maybe (Maybe(..))
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

abbr = Just
  ( (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "Apr", "Aug", "Dez", "Feb", "Jan", "Jul", "Jun", "Mai", "Mrz", "Nov", "Okt", "Sep" ]
  )

wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "April"
  , "August"
  , "Dezember"
  , "Februar"
  , "Januar"
  , "Juli"
  , "Juni"
  , "Mai"
  , "März"
  , "November"
  , "Oktober"
  , "September"
  ]
