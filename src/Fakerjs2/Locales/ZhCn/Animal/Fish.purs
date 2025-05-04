module Fakerjs2.Locales.ZhCn.Animal.Fish (fish) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

fish = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "中华鲟", "新疆大头鱼", "胭脂鱼", "草鱼", "金鱼", "长江白鲟", "青鱼", "鲤鱼", "鲫鱼", "鲶鱼", "鳙鱼" ]
