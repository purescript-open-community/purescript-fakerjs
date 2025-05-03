module Fakerjs2.Locales.Fa.Finance.TransactionType (transaction_type) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (TransactionType)
import Unsafe.Coerce (unsafeCoerce)

transaction_type :: TransactionType
transaction_type = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "برداشت از حساب", "سپرده", "صورتحساب", "پرداخت" ]
