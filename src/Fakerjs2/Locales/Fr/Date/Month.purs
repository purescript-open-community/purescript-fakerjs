module Fakerjs2.Locales.Fr.Date.Month (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Maybe (Maybe(..))
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

abbr = Just
  ( (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "août"
      , "avril"
      , "déc."
      , "févr."
      , "janv."
      , "juil."
      , "juin"
      , "mai"
      , "mars"
      , "nov."
      , "oct."
      , "sept."
      ]
  )

wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Août"
  , "Avril"
  , "Décembre"
  , "Février"
  , "Janvier"
  , "Juillet"
  , "Juin"
  , "Mai"
  , "Mars"
  , "Novembre"
  , "Octobre"
  , "Septembre"
  ]
