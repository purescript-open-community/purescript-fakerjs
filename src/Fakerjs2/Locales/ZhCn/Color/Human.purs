module Fakerjs2.Locales.ZhCn.Color.Human (human) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Human)
import Unsafe.Coerce (unsafeCoerce)

human :: Human
human = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "乳白色"
  , "天蓝色"
  , "棕褐色"
  , "橙色"
  , "浅橙色"
  , "淡紫色"
  , "淡褐色"
  , "灰色"
  , "白色"
  , "粉红色"
  , "紫红色"
  , "紫色"
  , "红色"
  , "红褐色"
  , "绿色"
  , "蓝紫色"
  , "蓝绿色"
  , "蓝色"
  , "薄荷绿色"
  , "金色"
  , "银色"
  , "青柠色"
  , "青绿色"
  , "靛蓝色"
  , "黄色"
  , "黑色"
  ]
