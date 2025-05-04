module Fakerjs2.Locales.ZhTw.Location.CityPrefix (city_prefix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

city_prefix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "臺北"
  , "新北"
  , "桃園"
  , "臺中"
  , "臺南"
  , "高雄"
  , "基隆"
  , "新竹"
  , "嘉義"
  , "苗栗"
  , "彰化"
  , "南投"
  , "雲林"
  , "屏東"
  , "宜蘭"
  , "花蓮"
  , "臺東"
  , "澎湖"
  , "金門"
  , "連江"
  ]
