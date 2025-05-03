module Fakerjs2.Locales.Ur.Color.Human (human) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Human)
import Unsafe.Coerce (unsafeCoerce)

human :: Human
human = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "ا\x000653سمانی"
  , "سرخ"
  , "سفہد"
  , "سنہری"
  , "مہندی"
  , "نارنجی"
  , "نیلا"
  , "پیلا"
  , "پیکا"
  , "چاندنی"
  , "کالا"
  , "ہرا"
  , "ہلکا ہرا"
  ]
