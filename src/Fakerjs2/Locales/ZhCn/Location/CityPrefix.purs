module Fakerjs2.Locales.ZhCn.Location.CityPrefix (city_prefix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

city_prefix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "上"
  , "包"
  , "北"
  , "南"
  , "厦"
  , "吉"
  , "太"
  , "宁"
  , "安"
  , "成"
  , "武"
  , "济"
  , "海"
  , "珠"
  , "福"
  , "衡"
  , "西"
  , "诸"
  , "贵"
  , "长"
  ]
