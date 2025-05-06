module Fakerjs2.Locales.Fr.Finance.Currency (currency) where

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
    [ { code: "USD", name: "Dollar", numericCode: "840", symbol: "$" }
    , { code: "CAD", name: "Dollar canadien", numericCode: "124", symbol: "$" }
    , { code: "MXN", name: "Peso mexicain", numericCode: "484", symbol: "$" }
    , { code: "AWG", name: "Florin", numericCode: "533", symbol: "ƒ" }
    , { code: "BBD", name: "Baisse du dollar", numericCode: "052", symbol: "$" }
    , { code: "BMD", name: "Dollar bermudien", numericCode: "060", symbol: "$" }
    , { code: "BSD", name: "Dollar des Bahamas", numericCode: "044", symbol: "$" }
    , { code: "DOP", name: "Peso dominicain", numericCode: "214", symbol: "$" }
    , { code: "JMD", name: "Dollar jamaïcain", numericCode: "388", symbol: "$" }
    , { code: "GTQ", name: "Quetzal guatémaltèque", numericCode: "320", symbol: "Q" }
    , { code: "PAB", name: "Balboa panaméen", numericCode: "590", symbol: "B/." }
    , { code: "XCD", name: "Dollar des Caraïbes", numericCode: "951", symbol: "$" }
    , { code: "EUR", name: "euro", numericCode: "978", symbol: "€" }
    , { code: "GBP", name: "Livre sterling", numericCode: "826", symbol: "£" }
    , { code: "GEL", name: "Course géorgienne", numericCode: "981", symbol: "₾" }
    , { code: "BGN", name: "Lev bulgare", numericCode: "975", symbol: "лв" }
    , { code: "CHF", name: "Franc suisse", numericCode: "756", symbol: "CHF" }
    , { code: "DKK", name: "Couronne danoise", numericCode: "208", symbol: "kr" }
    , { code: "CZK", name: "République tchèque Couronne", numericCode: "203", symbol: "Kč" }
    , { code: "HRK", name: "Kuna croate", numericCode: "191", symbol: "kn" }
    , { code: "HUF", name: "Forint hongrois", numericCode: "348", symbol: "ft" }
    , { code: "NOK", name: "couronne norvégienne", numericCode: "578", symbol: "kr" }
    , { code: "RUB", name: "Rouble russe", numericCode: "643", symbol: "₽" }
    , { code: "PLN", name: "Zloty polonais", numericCode: "985", symbol: "zł" }
    , { code: "RON", name: "Leu roumain", numericCode: "946", symbol: "lei" }
    , { code: "SEK", name: "couronne suédoise", numericCode: "752", symbol: "kr" }
    , { code: "UAH", name: "Hryvnia ukrainienne", numericCode: "980", symbol: "₴" }
    , { code: "TRY", name: "lire turque", numericCode: "949", symbol: "₺" }
    , { code: "ARS", name: "Argentine Peso", numericCode: "032", symbol: "$" }
    , { code: "BOB", name: "Bolivien bolivien", numericCode: "068", symbol: "Bs." }
    , { code: "BRL", name: "Real brésilien", numericCode: "986", symbol: "R$" }
    , { code: "CLP", name: "Peso chilien", numericCode: "152", symbol: "$" }
    , { code: "COP", name: "Peso colombien", numericCode: "170", symbol: "$" }
    , { code: "PEN", name: "Nouveau Sol Péruvien", numericCode: "604", symbol: "S/." }
    , { code: "PYG", name: "Guarani paraguayen", numericCode: "600", symbol: "₲" }
    , { code: "UYU", name: "Peso uruguayen", numericCode: "858", symbol: "$" }
    , { code: "VES", name: "Bolivar vénézuélien", numericCode: "928", symbol: "Bs." }
    , { code: "JPY", name: "Yen japonais", numericCode: "392", symbol: "¥" }
    , { code: "BDT", name: "Bangladesh Taka", numericCode: "050", symbol: "৳" }
    , { code: "CNY", name: "Le yuan chinois", numericCode: "156", symbol: "¥" }
    , { code: "HKD", name: "Dollar de Hong Kong", numericCode: "344", symbol: "$" }
    , { code: "INR", name: "Roupie indienne", numericCode: "356", symbol: "₹" }
    , { code: "KHR", name: "Riel cambodgien", numericCode: "116", symbol: "៛" }
    , { code: "LAK", name: "Poulet", numericCode: "418", symbol: "₭" }
    , { code: "LKR", name: "Roupie sri lankaise", numericCode: "144", symbol: "ර\x000dd4" }
    , { code: "MVR", name: "Rufiyaa", numericCode: "462", symbol: ".ރ" }
    , { code: "MYR", name: "cloche malaisienne", numericCode: "458", symbol: "RM" }
    , { code: "NPR", name: "Roupie népalaise", numericCode: "524", symbol: "र\x000942" }
    , { code: "PHP", name: "Peso philippin", numericCode: "608", symbol: "₱" }
    , { code: "PKR", name: "Roupie pakistanaise", numericCode: "586", symbol: "₨" }
    , { code: "SGD", name: "Dollar de Singapour", numericCode: "702", symbol: "$" }
    , { code: "THB", name: "Baht thaïlandais", numericCode: "764", symbol: "฿" }
    , { code: "TWD", name: "Nouveau dollar de Taïwan", numericCode: "901", symbol: "$" }
    , { code: "VND", name: "Dong vietnamien", numericCode: "704", symbol: "₫" }
    , { code: "AUD", name: "Dollar australien", numericCode: "036", symbol: "$" }
    , { code: "FJD", name: "Dollar fidjien", numericCode: "242", symbol: "$" }
    , { code: "NZD", name: "Dollar néo-zélandais", numericCode: "554", symbol: "$" }
    , { code: "XPF", name: "Franc CFP", numericCode: "953", symbol: "₣" }
    , { code: "EGP", name: "Livre égyptienne", numericCode: "818", symbol: "£" }
    , { code: "GHS", name: "Cédi ghanéen", numericCode: "936", symbol: "₵" }
    , { code: "GMD", name: "Dalasi", numericCode: "270", symbol: "D" }
    , { code: "KES", name: "Shilling kenyan", numericCode: "404", symbol: "Sh" }
    , { code: "MAD", name: "Dirham marocain", numericCode: "504", symbol: "DH" }
    , { code: "MGA", name: "Ariary malgache", numericCode: "969", symbol: "Ar" }
    , { code: "MUR", name: "Roupie mauricienne", numericCode: "480", symbol: "₨" }
    , { code: "NAD", name: "Dollar namibien", numericCode: "516", symbol: "$" }
    , { code: "NGN", name: "Naira nigérian", numericCode: "566", symbol: "₦" }
    , { code: "SCR", name: "Roupie", numericCode: "690", symbol: "₨" }
    , { code: "TND", name: "Dinar tunisien", numericCode: "788", symbol: "DT" }
    , { code: "UGX", name: "Shilling ougandais", numericCode: "800", symbol: "Sh" }
    , { code: "XAF", name: "CFA Franc BEAC", numericCode: "950", symbol: "Fr" }
    , { code: "XOF", name: "CFA Franc BCEAO", numericCode: "952", symbol: "Fr" }
    , { code: "ZAR", name: "Rand sud-africain", numericCode: "710", symbol: "Br" }
    , { code: "AED", name: "Dirham des Émirats arabes unis", numericCode: "784", symbol: "د.إ" }
    , { code: "ILS", name: "Nouveau Shekel israélien", numericCode: "376", symbol: "₪" }
    , { code: "SYP", name: "Livre syrienne", numericCode: "760", symbol: "£" }
    , { code: "JOD", name: "Dinar jordanien", numericCode: "400", symbol: "د.ا" }
    , { code: "KWD", name: "Dinar koweïtien", numericCode: "414", symbol: "د.ك" }
    , { code: "LBP", name: "Livre libanaise", numericCode: "422", symbol: "ل.ل" }
    , { code: "OMR", name: "Rial omanais", numericCode: "512", symbol: "ر.ع." }
    , { code: "QAR", name: "Rial qatari", numericCode: "634", symbol: "ر.ق" }
    , { code: "SAR", name: "Riyal saoudien", numericCode: "682", symbol: "" }
    , { code: "BTC", name: "Bitcoin", numericCode: "000", symbol: "₿" }
    , { code: "ETH", name: "Ethereum", numericCode: "000", symbol: "Ξ" }
    , { code: "LTC", name: "Litecoin", numericCode: "000", symbol: "Ł" }
    , { code: "XRP", name: "Ripples", numericCode: "000", symbol: "XRP" }
    ]
