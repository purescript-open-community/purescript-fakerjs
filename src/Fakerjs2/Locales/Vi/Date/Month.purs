module Fakerjs2.Locales.Vi.Date.Month (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Maybe (Maybe(..))
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

abbr = Just
  ( (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "Tháng 1"
      , "Tháng 10"
      , "Tháng 11"
      , "Tháng 12"
      , "Tháng 2"
      , "Tháng 3"
      , "Tháng 4"
      , "Tháng 5"
      , "Tháng 6"
      , "Tháng 7"
      , "Tháng 8"
      , "Tháng 9"
      ]
  )

wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Tháng Ba"
  , "Tháng Bảy"
  , "Tháng Chín"
  , "Tháng Giêng"
  , "Tháng Hai"
  , "Tháng Mười"
  , "Tháng Mười Hai"
  , "Tháng Mười Một"
  , "Tháng Năm"
  , "Tháng Sáu"
  , "Tháng Tám"
  , "Tháng Tư"
  ]
