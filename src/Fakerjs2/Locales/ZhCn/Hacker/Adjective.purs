module Fakerjs2.Locales.ZhCn.Hacker.Adjective (adjective) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Adjective)
import Unsafe.Coerce (unsafeCoerce)

adjective :: Adjective
adjective = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "主要"
  , "光学"
  , "全高清"
  , "冗余"
  , "后端"
  , "固态"
  , "在线"
  , "多字节"
  , "开源"
  , "无线"
  , "神经元"
  , "移动"
  , "蓝牙"
  , "虚拟"
  , "触控"
  , "跨平台"
  , "辅助"
  ]
