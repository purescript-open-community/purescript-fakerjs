module Fakerjs2.Locales.Es.Date.Month (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Maybe (Maybe(..))
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

abbr = Just
  ( (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "abr", "ago", "dic", "ene", "feb", "jul", "jun", "mar", "may", "nov", "oct", "sep" ]
  )

wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "abril"
  , "agosto"
  , "diciembre"
  , "enero"
  , "febrero"
  , "julio"
  , "junio"
  , "marzo"
  , "mayo"
  , "noviembre"
  , "octubre"
  , "septiembre"
  ]
