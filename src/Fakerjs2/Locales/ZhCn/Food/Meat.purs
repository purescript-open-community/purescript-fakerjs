module Fakerjs2.Locales.ZhCn.Food.Meat (meat) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Meat)
import Unsafe.Coerce (unsafeCoerce)

meat :: Meat
meat = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "火鸡肉", "牛肉", "猪肉", "羊肉", "蛇肉", "驴肉", "鳄鱼肉", "鸡肉", "鸭肉", "鸵鸟肉", "鸽子肉", "鹅肉", "鹌鹑肉" ]
