module Fakerjs2.Locales.ZhCn.Hacker.Verb (verb) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Verb)
import Unsafe.Coerce (unsafeCoerce)

verb :: Verb
verb = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "传输"
  , "入侵"
  , "压缩"
  , "合成"
  , "备份"
  , "复制"
  , "导航"
  , "生成"
  , "索引"
  , "绕过"
  , "编程"
  , "覆盖"
  , "解析"
  , "计算"
  , "输入"
  , "重启"
  , "量化"
  , "链接"
  ]
