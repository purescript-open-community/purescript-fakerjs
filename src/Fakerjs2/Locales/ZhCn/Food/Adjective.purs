module Fakerjs2.Locales.ZhCn.Food.Adjective (adjective) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Adjective)
import Unsafe.Coerce (unsafeCoerce)

adjective :: Adjective
adjective = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "咸香"
  , "多汁"
  , "微苦"
  , "浓郁"
  , "清淡"
  , "清爽"
  , "滑嫩"
  , "焦香"
  , "爽口"
  , "甘甜"
  , "筋道"
  , "细腻"
  , "软糯"
  , "酥脆"
  , "酸爽"
  , "醇厚"
  , "香甜"
  , "香辣"
  , "鲜嫩"
  , "麻辣"
  ]
