module Fakerjs2.Locales.ZhCn.Animal.Bear (bear) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

bear = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "亚洲黑熊", "北极熊", "大熊猫", "小熊猫", "懒熊", "棕熊", "眼镜熊", "美洲黑熊" ]
