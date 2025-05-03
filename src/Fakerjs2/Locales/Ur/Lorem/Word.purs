module Fakerjs2.Locales.Ur.Lorem.Word (word) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Word)
import Unsafe.Coerce (unsafeCoerce)

word :: Word
word = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "سگ"
  , "دگاس"
  , "ساد"
  , "دسھا"
  , "باس"
  , "نان"
  , "انب"
  , "ابس"
  , "ادسگ"
  , "ابنسد"
  , "سفد"
  , "دف"
  , "بس"
  , "باسدب"
  , "باسدبا"
  , "رعابھ"
  , "ابسد"
  , "سب"
  , "ط"
  , "اسدبگ"
  , "اسدگ"
  , "اھگسد"
  , "سدگ"
  , "اسگ"
  , "شبچ"
  , "عو"
  , "سدبگا"
  , "اسبد"
  , "ساب"
  , "سدب"
  , "سبا"
  , "باسد"
  , "دسب"
  , "طسد"
  , "چسد"
  , "اسداسدھدسبابگ"
  , "سبادفھناسدھ"
  , "باسدباسدفنباسد"
  , "ابسانفسدد"
  , "سندافاھگسدبا"
  , "ساسدبھ اسدفگبطاسدفد"
  , "سدطاسدگاسدگ"
  , "چاسدسد"
  ]
