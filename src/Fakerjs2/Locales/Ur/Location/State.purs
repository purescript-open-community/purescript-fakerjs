module Fakerjs2.Locales.Ur.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Unsafe.Coerce (unsafeCoerce)

state = (unsafeCoerce :: Array String -> NonEmptyArray String)
  [ "خیبر پختونخواہ"
  , "اسلام ا\x000653باد"
  , "پنجاب"
  , "سندھ"
  , "ا\x000653زاد کشمیر"
  , "بلوچستان"
  , "گلگت بلتستان"
  ]
