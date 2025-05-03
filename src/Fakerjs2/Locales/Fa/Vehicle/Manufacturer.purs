module Fakerjs2.Locales.Fa.Vehicle.Manufacturer (manufacturer) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Manufacturer)
import Unsafe.Coerce (unsafeCoerce)

manufacturer :: Manufacturer
manufacturer = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "آ\x000654\x00200cئودی"
  , "استون مارتین"
  , "بنتلی"
  , "بوگاتی"
  , "بی ام و"
  , "تسلا"
  , "تویوتا"
  , "جگوار"
  , "جیپ"
  , "دوج"
  , "رولز رویس"
  , "شورولت"
  , "فراری"
  , "فورد"
  , "فیات"
  , "لامبورگینی"
  , "لندرور"
  , "مازراتی"
  , "مرسدس بنز"
  , "مینی"
  , "نیسان"
  , "هوندا"
  , "هیوندای"
  , "ولکس واگن"
  , "پورشه"
  , "کادیلاک"
  , "کرایسلر"
  , "کیا"
  ]
