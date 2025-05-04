module Fakerjs2.Locales.ZhCn.Company.Category (category) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

category = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "传媒", "保险", "印刷", "建设", "旅游发展", "林业", "水产", "燃气", "物流", "电力", "矿业", "网络科技", "运输", "食品" ]
