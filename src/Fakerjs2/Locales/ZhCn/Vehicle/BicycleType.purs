module Fakerjs2.Locales.ZhCn.Vehicle.BicycleType (bicycle_type) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

bicycle_type = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "三轮车"
  , "健身自行车"
  , "公路自行车"
  , "冒险公路自行车"
  , "卧式自行车"
  , "双人自行车"
  , "双运动自行车"
  , "场地/固定齿轮自行车"
  , "城市自行车"
  , "小轮车自行车"
  , "山地自行车"
  , "巡洋舰自行车"
  , "平足舒适自行车"
  , "折叠自行车"
  , "旅行自行车"
  , "混合动力自行车"
  , "越野自行车"
  , "铁人三项/计时自行车"
  ]
