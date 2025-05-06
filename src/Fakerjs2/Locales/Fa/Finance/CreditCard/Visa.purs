module Fakerjs2.Locales.Fa.Finance.CreditCard.Visa (visa) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

visa = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "4###########L", "4###-####-####-###L" ]
