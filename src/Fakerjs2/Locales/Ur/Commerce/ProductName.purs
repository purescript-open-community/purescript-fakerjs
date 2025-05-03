module Fakerjs2.Locales.Ur.Commerce.ProductName (adjective, material, product) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (ProductNameAdjective, ProductNameMaterial, ProductNameProduct)
import Unsafe.Coerce (unsafeCoerce)

adjective :: ProductNameAdjective
adjective = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "ا\x000653رامدہ", "بیترین", "خوبصورت", "چھوٹا", "ہوشیار" ]

material :: ProductNameMaterial
material = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "تازہ"
  , "جم شدہ"
  , "دھات"
  , "ربڑ"
  , "روی\x000670"
  , "لوہا"
  , "لکڑہ"
  , "نرم"
  , "پلاسٹک"
  , "کنکریٹ"
  , "گرانایٹ"
  ]

product :: ProductNameProduct
product = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "بال"
  , "بای\x000670ک"
  , "تولیہ"
  , "جوتے"
  , "دستانے"
  , "سلاد"
  , "سیخ کباب"
  , "صابن"
  , "قمیص"
  , "ماو\x000670س"
  , "مرغ"
  , "مچھلی"
  , "میز"
  , "ٹوپی"
  , "پاپڑ"
  , "پتلون"
  , "پنیر"
  , "کرسہ"
  , "کمپیوٹر"
  , "کی بورڈ"
  , "گاڑی"
  ]
