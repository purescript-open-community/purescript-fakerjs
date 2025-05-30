module Fakerjs2.Locales.Fa.Finance.AccountType (account_type) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

account_type = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "سرمایه گذاری", "وام خودرو", "وام شخصی", "وام مسکن", "پس انداز", "کارت اعتباری" ]
