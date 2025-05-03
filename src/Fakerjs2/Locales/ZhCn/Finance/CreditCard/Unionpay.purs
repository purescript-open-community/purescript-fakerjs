module Fakerjs2.Locales.ZhCn.Finance.CreditCard.Unionpay (unionpay) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Unionpay)
import Unsafe.Coerce (unsafeCoerce)

unionpay :: Unionpay
unionpay = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "62#############L"
  , "67#############L"
  , "81################L"
  , "81###############L"
  , "81##############L"
  , "81#############L"
  ]
