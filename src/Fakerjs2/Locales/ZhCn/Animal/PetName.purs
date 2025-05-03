module Fakerjs2.Locales.ZhCn.Animal.PetName (pet_name) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (PetName)
import Unsafe.Coerce (unsafeCoerce)

pet_name :: PetName
pet_name = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "乐乐"
  , "乖乖"
  , "可可"
  , "咪咪"
  , "团团"
  , "多多"
  , "天天"
  , "奶茶"
  , "宝宝"
  , "小七"
  , "小灰"
  , "小白"
  , "小黑"
  , "悠悠"
  , "橘子"
  , "毛毛"
  , "点点"
  , "球球"
  , "皮皮"
  , "糖糖"
  , "臭臭"
  , "花花"
  , "虎子"
  , "蛋蛋"
  , "豆豆"
  ]
