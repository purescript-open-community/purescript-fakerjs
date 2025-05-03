module Fakerjs2.Locales.ZhTw.Color.Human (human) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Human)
import Unsafe.Coerce (unsafeCoerce)

human :: Human
human = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "乳白色"
  , "天藍色"
  , "棕褐色"
  , "橙色"
  , "淡紫色"
  , "淡褐色"
  , "淺橙色"
  , "灰色"
  , "白色"
  , "粉紅色"
  , "紅色"
  , "紅褐色"
  , "紫紅色"
  , "紫色"
  , "綠色"
  , "薄荷綠色"
  , "藍紫色"
  , "藍綠色"
  , "藍色"
  , "金色"
  , "銀色"
  , "青檸色"
  , "青綠色"
  , "靛藍色"
  , "黃色"
  , "黑色"
  ]
