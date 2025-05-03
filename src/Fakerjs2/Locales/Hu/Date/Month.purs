module Fakerjs2.Locales.Hu.Date.Month (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (MonthAbbr, MonthWide)
import Unsafe.Coerce (unsafeCoerce)

abbr :: MonthAbbr
abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "aug."
  , "dec."
  , "febr."
  , "jan."
  , "júl."
  , "jún."
  , "máj."
  , "márc."
  , "nov."
  , "okt."
  , "szept."
  , "ápr."
  ]

wide :: MonthWide
wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "augusztus"
  , "december"
  , "február"
  , "január"
  , "július"
  , "június"
  , "május"
  , "március"
  , "november"
  , "október"
  , "szeptember"
  , "április"
  ]
