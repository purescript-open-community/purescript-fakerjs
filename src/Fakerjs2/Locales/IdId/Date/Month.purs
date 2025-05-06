module Fakerjs2.Locales.IdId.Date.Month (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Maybe (Maybe(..))
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

abbr = Just
  ( (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "Ags", "Apr", "Des", "Feb", "Jan", "Jul", "Jun", "Mar", "Mei", "Nov", "Okt", "Sep" ]
  )

wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Agustus"
  , "April"
  , "Desember"
  , "Februari"
  , "Januari"
  , "Juli"
  , "Juni"
  , "Maret"
  , "Mei"
  , "November"
  , "Oktober"
  , "September"
  ]
