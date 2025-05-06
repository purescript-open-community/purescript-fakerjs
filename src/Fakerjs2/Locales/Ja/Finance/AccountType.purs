module Fakerjs2.Locales.Ja.Finance.AccountType (account_type) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

account_type = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "クレジットカ\x0030fcド"
  , "マネ\x0030fcマ\x0030fcケット"
  , "住宅ロ\x0030fcン"
  , "個人ロ\x0030fcン"
  , "当座預金"
  , "投資"
  , "自動車ロ\x0030fcン"
  , "貯蓄"
  ]
