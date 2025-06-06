module Fakerjs2.Locales.El.Finance.TransactionType (transaction_type) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

transaction_type = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "ανάληψη", "κατάθεση", "πληρωμή", "τιμολόγιο" ]
