module Fakerjs2.Locales.ZhCn.Animal.Type (type_) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

type_ = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "昆虫", "熊", "狗", "猫", "马", "鱼", "鸟" ]
