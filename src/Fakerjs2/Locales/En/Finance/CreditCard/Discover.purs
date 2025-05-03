module Fakerjs2.Locales.En.Finance.CreditCard.Discover (discover) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Discover)
import Unsafe.Coerce (unsafeCoerce)

discover :: Discover
discover = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "6011-####-####-###L", "64[4-9]#-####-####-###L", "65##-####-####-###L" ]
