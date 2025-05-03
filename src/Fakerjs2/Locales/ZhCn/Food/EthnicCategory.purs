module Fakerjs2.Locales.ZhCn.Food.EthnicCategory (ethnic_category) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (EthnicCategory)
import Unsafe.Coerce (unsafeCoerce)

ethnic_category :: EthnicCategory
ethnic_category = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "东北菜", "云南菜", "客家菜", "川菜", "徽菜", "浙菜", "湘菜", "潮汕菜", "粤菜", "苏菜", "西北菜", "贵州菜", "闽菜", "鲁菜" ]
