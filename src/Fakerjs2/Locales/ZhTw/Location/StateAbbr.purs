module Fakerjs2.Locales.ZhTw.Location.StateAbbr (state_abbr) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (StateAbbr)
import Unsafe.Coerce (unsafeCoerce)

state_abbr :: StateAbbr
state_abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "北"
  , "新北"
  , "桃"
  , "中"
  , "南"
  , "高"
  , "基"
  , "竹市"
  , "嘉市"
  , "竹縣"
  , "苗"
  , "彰"
  , "投"
  , "雲"
  , "嘉縣"
  , "宜"
  , "花"
  , "東"
  , "澎"
  , "金"
  , "馬"
  ]
