module Fakerjs2.Locales.El.Finance.Currency (currency) where

import Data.String.NonEmpty (unsafeFromString)
import Fakerjs2.Types (Currency)

currency :: Currency
currency =
  [ { name: unsafeFromString "Ευρώ"
    , code: unsafeFromString "EUR"
    , symbol: "€"
    , numericCode: unsafeFromString "978"
    }
  ]
