module Fakerjs2.Locales.Hu.Date.Month (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Maybe (Maybe(..))
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

abbr = Just
  ( (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
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
  )

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
