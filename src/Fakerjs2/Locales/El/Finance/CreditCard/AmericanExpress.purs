module Fakerjs2.Locales.El.Finance.CreditCard.AmericanExpress (american_express) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (AmericanExpress)
import Unsafe.Coerce (unsafeCoerce)

american_express :: AmericanExpress
american_express = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "/34##-######-####L/", "/37##-######-####L/" ]
