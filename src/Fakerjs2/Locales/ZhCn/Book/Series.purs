module Fakerjs2.Locales.ZhCn.Book.Series (series) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Series)
import Unsafe.Coerce (unsafeCoerce)

series :: Series
series = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "三体"
  , "九州缥缈录"
  , "人世间"
  , "仙逆"
  , "全职高手"
  , "凡人修仙传"
  , "剑来"
  , "司藤"
  , "围城"
  , "大奉打更人"
  , "天官赐福"
  , "将夜"
  , "山河表里"
  , "庆余年"
  , "悟空传"
  , "择天记"
  , "斗破苍穹"
  , "星辰变"
  , "杀破狼"
  , "步步惊心"
  , "流浪地球"
  , "琅琊榜"
  , "盗墓笔记"
  , "盘龙"
  , "红楼梦"
  , "苍兰诀"
  , "藏地密码"
  , "诛仙"
  , "诡秘之主"
  , "长安十二时辰"
  , "阳神"
  , "雪中悍刀行"
  , "鬼吹灯"
  , "魔道祖师"
  ]
