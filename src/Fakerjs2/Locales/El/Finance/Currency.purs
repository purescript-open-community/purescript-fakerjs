module Fakerjs2.Locales.El.Finance.Currency (currency) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

currency =
  ( unsafeCoerce
      :: Array { code :: String, name :: String, numericCode :: String, symbol :: String }
      -> NonEmptyArray
           { code :: NonEmptyString
           , name :: NonEmptyString
           , numericCode :: NonEmptyString
           , symbol :: String
           }
  ) [ { code: "EUR", name: "Ευρώ", numericCode: "978", symbol: "€" } ]
