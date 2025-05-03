module Fakerjs2.Locales.Fr.Date.Month (abbr, wide, wide_context) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (MonthAbbr, MonthWide, MonthWideContext)
import Unsafe.Coerce (unsafeCoerce)

abbr :: MonthAbbr
abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
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

wide :: MonthWide
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

wide_context :: MonthWideContext
wide_context = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "août"
  , "avril"
  , "décembre"
  , "février"
  , "janvier"
  , "juillet"
  , "juin"
  , "mai"
  , "mars"
  , "novembre"
  , "octobre"
  , "septembre"
  ]
