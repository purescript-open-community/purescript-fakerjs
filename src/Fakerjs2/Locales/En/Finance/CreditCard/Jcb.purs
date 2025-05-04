module Fakerjs2.Locales.En.Finance.CreditCard.Jcb (jcb) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

jcb = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "3528-####-####-###L", "3529-####-####-###L", "35[3-8]#-####-####-###L" ]
