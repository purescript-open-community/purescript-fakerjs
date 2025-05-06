module Fakerjs2.Locales.Ur.Date.Month (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Maybe (Maybe(..))
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

abbr = Nothing
wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "اپریل"
  , "اکتوبر"
  , "اگست"
  , "جنوری"
  , "جولائ"
  , "جون"
  , "دسمبر"
  , "ستمبر"
  , "فروری"
  , "مئ"
  , "مارچ"
  , "نومبر"
  ]
