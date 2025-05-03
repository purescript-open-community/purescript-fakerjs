module Fakerjs2.Locales.ZhCn.Animal.Insect (insect) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Insect)
import Unsafe.Coerce (unsafeCoerce)

insect :: Insect
insect = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "天牛"
  , "天蛾"
  , "屎壳郎"
  , "拟步甲"
  , "步行虫"
  , "水黾"
  , "独角仙"
  , "瓢虫"
  , "白粉蝶"
  , "红蜻蜓"
  , "绿豆蝇"
  , "草蛉"
  , "萤火虫"
  , "蚊子"
  , "蚜虫"
  , "蜉蝣"
  , "蜜蜂"
  , "蝉"
  , "蝗虫"
  , "螳螂"
  , "蟋蟀"
  , "跳蚤"
  , "金龟子"
  , "飞虱"
  ]
