module Fakerjs2.Locales.ZhCn.Database.Column (column) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

column = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "令牌", "创建于", "名称", "头像", "密码", "手机", "更新于", "标识", "标题", "注释", "状态", "类别", "组别", "邮箱" ]
