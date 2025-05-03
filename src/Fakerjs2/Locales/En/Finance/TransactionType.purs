module Fakerjs2.Locales.En.Finance.TransactionType (transaction_type) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (TransactionType)
import Unsafe.Coerce (unsafeCoerce)

transaction_type :: TransactionType
transaction_type = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "deposit", "invoice", "payment", "withdrawal" ]
