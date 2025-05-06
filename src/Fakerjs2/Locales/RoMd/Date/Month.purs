module Fakerjs2.Locales.RoMd.Date.Month (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Maybe (Maybe(..))
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

abbr = Just
  ( (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "Apr", "Aug", "Dec", "Feb", "Ian", "Iul", "Iun", "Mai", "Mar", "Noi", "Oct", "Sep" ]
  )

wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Aprilie"
  , "August"
  , "Decembrie"
  , "Februarie"
  , "Ianuarie"
  , "Iulie"
  , "Iunie"
  , "Mai"
  , "Martie"
  , "Noiembrie"
  , "Octombrie"
  , "Septembrie"
  ]
