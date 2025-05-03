module Fakerjs2.Locales.Ur.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (State)
import Unsafe.Coerce (unsafeCoerce)

state :: State
state = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "خیبر پختونخواہ"
  , "اسلام ا\x000653باد"
  , "پنجاب"
  , "سندھ"
  , "ا\x000653زاد کشمیر"
  , "بلوچستان"
  , "گلگت بلتستان"
  ]
