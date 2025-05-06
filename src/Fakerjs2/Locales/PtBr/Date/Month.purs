module Fakerjs2.Locales.PtBr.Date.Month (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Maybe (Maybe(..))
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

abbr = Just
  ( (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "Abr", "Ago", "Dez", "Fev", "Jan", "Jul", "Jun", "Mai", "Mar", "Nov", "Out", "Set" ]
  )

wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Abril"
  , "Agosto"
  , "Dezembro"
  , "Fevereiro"
  , "Janeiro"
  , "Julho"
  , "Junho"
  , "Maio"
  , "Março"
  , "Novembro"
  , "Outubro"
  , "Setembro"
  ]
