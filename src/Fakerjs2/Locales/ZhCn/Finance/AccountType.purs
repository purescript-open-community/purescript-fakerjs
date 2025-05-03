module Fakerjs2.Locales.ZhCn.Finance.AccountType (account_type) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (AccountType)
import Unsafe.Coerce (unsafeCoerce)

account_type :: AccountType
account_type = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "个人贷款", "信用卡", "储蓄", "房屋贷款", "投资", "支票", "汽车贷款", "货币市场" ]
