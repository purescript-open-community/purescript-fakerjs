module Fakerjs2.Locales.Ja.Finance.TransactionType (transaction_type) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

transaction_type = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "入金", "引き落とし", "支払い", "請求" ]
