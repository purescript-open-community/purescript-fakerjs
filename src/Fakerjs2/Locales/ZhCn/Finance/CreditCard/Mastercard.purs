module Fakerjs2.Locales.ZhCn.Finance.CreditCard.Mastercard (mastercard) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

mastercard = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "2[221-720]-####-####-###L", "5[1-5]##-####-####-###L" ]
