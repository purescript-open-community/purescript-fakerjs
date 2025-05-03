module Fakerjs2.Locales.ZhCn.Location.StateAbbr (state_abbr) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (StateAbbr)
import Unsafe.Coerce (unsafeCoerce)

state_abbr :: StateAbbr
state_abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "北京"
  , "上海"
  , "天津"
  , "重庆"
  , "黑龙江"
  , "吉林"
  , "辽阳"
  , "内蒙古"
  , "河北"
  , "新疆"
  , "甘肃"
  , "青海"
  , "陕西"
  , "宁夏"
  , "河南"
  , "山东"
  , "山西"
  , "合肥"
  , "湖北"
  , "湖南"
  , "苏州"
  , "四川"
  , "贵州"
  , "云南"
  , "广西"
  , "西藏"
  , "浙江"
  , "江西"
  , "广东"
  , "福建"
  , "海南"
  ]
