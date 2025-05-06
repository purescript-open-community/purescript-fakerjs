module Fakerjs2.Locales.Fa.Finance.Currency (currency) where

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
  )
    [ { code: "AED", name: "درهم امارات", numericCode: "784", symbol: "" }
    , { code: "AFN", name: "افغانی", numericCode: "971", symbol: "؋" }
    , { code: "ARS", name: "پزو آرژانتین", numericCode: "032", symbol: "$" }
    , { code: "AUD", name: "دلار استرالیا", numericCode: "036", symbol: "$" }
    , { code: "AZN", name: "مانات آذربایجان", numericCode: "944", symbol: "ман" }
    , { code: "CAD", name: "دلار کانادا", numericCode: "124", symbol: "$" }
    , { code: "CHF", name: "فرانک سوئیس", numericCode: "756", symbol: "CHF" }
    , { code: "CZK", name: "کرون چک", numericCode: "203", symbol: "Kč" }
    , { code: "EEK", name: "کرون", numericCode: "233", symbol: "" }
    , { code: "IQD", name: "دینار عراق", numericCode: "368", symbol: "" }
    , { code: "IRR", name: "ریال ایران", numericCode: "364", symbol: "﷼" }
    , { code: "ISK", name: "کرون ایسلند", numericCode: "352", symbol: "kr" }
    , { code: "JOD", name: "دینار اردن", numericCode: "400", symbol: "" }
    , { code: "JPY", name: "ین", numericCode: "392", symbol: "¥" }
    , { code: "KWD", name: "دینار کویت", numericCode: "414", symbol: "" }
    , { code: "LYD", name: "دینار لیبی", numericCode: "434", symbol: "" }
    , { code: "MAD", name: "درهم مراکش", numericCode: "504", symbol: "" }
    , { code: "NPR", name: "روپی نپال", numericCode: "524", symbol: "₨" }
    , { code: "OMR", name: "ریال عمان", numericCode: "512", symbol: "﷼" }
    , { code: "PHP", name: "پزو فیلیپین", numericCode: "608", symbol: "Php" }
    , { code: "PKR", name: "روپی پاکستان", numericCode: "586", symbol: "₨" }
    , { code: "QAR", name: "ریال قطر", numericCode: "634", symbol: "﷼" }
    , { code: "RUB", name: "روبل روسیه", numericCode: "643", symbol: "руб" }
    , { code: "SAR", name: "ریال عربستان", numericCode: "682", symbol: "﷼" }
    , { code: "SDG", name: "پوند سودان", numericCode: "938", symbol: "" }
    , { code: "SEK", name: "کرون سوئد", numericCode: "752", symbol: "kr" }
    , { code: "SGD", name: "دلار سنگاپور", numericCode: "702", symbol: "$" }
    ]
