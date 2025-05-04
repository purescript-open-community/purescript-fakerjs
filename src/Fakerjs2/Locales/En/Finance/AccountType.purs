module Fakerjs2.Locales.En.Finance.AccountType (account_type) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

account_type = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Auto Loan"
  , "Checking"
  , "Credit Card"
  , "Home Loan"
  , "Investment"
  , "Money Market"
  , "Personal Loan"
  , "Savings"
  ]
