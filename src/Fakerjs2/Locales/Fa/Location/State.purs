module Fakerjs2.Locales.Fa.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (State)
import Unsafe.Coerce (unsafeCoerce)

state :: State
state = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "آذربایجان شرقی"
  , "آذربایجان غربی"
  , "اردبیل"
  , "اصفهان"
  , "البرز"
  , "ایلام"
  , "بوشهر"
  , "تهران"
  , "چهارمحال و بختیاری"
  , "خراسان جنوبی"
  , "خراسان رضوی"
  , "خراسان شمالی"
  , "خوزستان"
  , "زنجان"
  , "سمنان"
  , "سیستان و بلوچستان"
  , "فارس"
  , "قزوین"
  , "قم"
  , "کردستان"
  , "کرمان"
  , "کرمانشاه"
  , "کهگیلویه و بویراحمد"
  , "گلستان"
  , "گیلان"
  , "لرستان"
  , "مازندران"
  , "مرکزی"
  , "هرمزگان"
  , "همدان"
  , "یزد"
  ]
