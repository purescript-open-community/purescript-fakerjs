module Fakerjs2.Locales.ZhCn.Music.Genre (genre) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Genre)
import Unsafe.Coerce (unsafeCoerce)

genre :: Genre
genre = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "世界"
  , "乡村"
  , "嘻哈"
  , "拉丁"
  , "摇滚"
  , "放克"
  , "民谣"
  , "流行"
  , "灵魂"
  , "爵士"
  , "牙买加"
  , "电子"
  , "经典"
  , "舞台与银幕"
  , "蓝调"
  , "说唱"
  , "重金属"
  , "非音乐"
  ]
