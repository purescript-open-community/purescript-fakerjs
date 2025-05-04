module Fakerjs2.Locales.ZhCn.Finance.TransactionType (transaction_type) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

transaction_type = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "取款", "存款", "开票", "支付" ]
