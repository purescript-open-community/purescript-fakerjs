module Fakerjs2.Locales.En.Finance.Currency (currency) where

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
    [ { code: "AED", name: "UAE Dirham", numericCode: "784", symbol: "" }
    , { code: "AFN", name: "Afghani", numericCode: "971", symbol: "؋" }
    , { code: "ALL", name: "Lek", numericCode: "008", symbol: "Lek" }
    , { code: "AMD", name: "Armenian Dram", numericCode: "051", symbol: "" }
    , { code: "ANG", name: "Netherlands Antillian Guilder", numericCode: "532", symbol: "ƒ" }
    , { code: "AOA", name: "Kwanza", numericCode: "973", symbol: "" }
    , { code: "ARS", name: "Argentine Peso", numericCode: "032", symbol: "$" }
    , { code: "AUD", name: "Australian Dollar", numericCode: "036", symbol: "$" }
    , { code: "AWG", name: "Aruban Guilder", numericCode: "533", symbol: "ƒ" }
    , { code: "AZN", name: "Azerbaijanian Manat", numericCode: "944", symbol: "ман" }
    , { code: "BAM", name: "Convertible Marks", numericCode: "977", symbol: "KM" }
    , { code: "BBD", name: "Barbados Dollar", numericCode: "052", symbol: "$" }
    , { code: "BDT", name: "Taka", numericCode: "050", symbol: "" }
    , { code: "BGN", name: "Bulgarian Lev", numericCode: "975", symbol: "лв" }
    , { code: "BHD", name: "Bahraini Dinar", numericCode: "048", symbol: "" }
    , { code: "BIF", name: "Burundi Franc", numericCode: "108", symbol: "" }
    , { code: "BMD"
      , name: "Bermudian Dollar (customarily known as Bermuda Dollar)"
      , numericCode: "060"
      , symbol: "$"
      }
    , { code: "BND", name: "Brunei Dollar", numericCode: "096", symbol: "$" }
    , { code: "BOB", name: "Boliviano boliviano", numericCode: "068", symbol: "Bs" }
    , { code: "BRL", name: "Brazilian Real", numericCode: "986", symbol: "R$" }
    , { code: "BSD", name: "Bahamian Dollar", numericCode: "044", symbol: "$" }
    , { code: "BWP", name: "Pula", numericCode: "072", symbol: "P" }
    , { code: "BYN", name: "Belarusian Ruble", numericCode: "933", symbol: "Rbl" }
    , { code: "BZD", name: "Belize Dollar", numericCode: "084", symbol: "BZ$" }
    , { code: "CAD", name: "Canadian Dollar", numericCode: "124", symbol: "$" }
    , { code: "CDF", name: "Congolese Franc", numericCode: "976", symbol: "" }
    , { code: "CHF", name: "Swiss Franc", numericCode: "756", symbol: "CHF" }
    , { code: "CLP", name: "Chilean Peso", numericCode: "152", symbol: "$" }
    , { code: "CNY", name: "Yuan Renminbi", numericCode: "156", symbol: "¥" }
    , { code: "COP", name: "Colombian Peso", numericCode: "170", symbol: "$" }
    , { code: "CRC", name: "Costa Rican Colon", numericCode: "188", symbol: "₡" }
    , { code: "CUP", name: "Cuban Peso", numericCode: "192", symbol: "₱" }
    , { code: "CVE", name: "Cape Verde Escudo", numericCode: "132", symbol: "" }
    , { code: "CZK", name: "Czech Koruna", numericCode: "203", symbol: "Kč" }
    , { code: "DJF", name: "Djibouti Franc", numericCode: "262", symbol: "" }
    , { code: "DKK", name: "Danish Krone", numericCode: "208", symbol: "kr" }
    , { code: "DOP", name: "Dominican Peso", numericCode: "214", symbol: "RD$" }
    , { code: "DZD", name: "Algerian Dinar", numericCode: "012", symbol: "" }
    , { code: "EGP", name: "Egyptian Pound", numericCode: "818", symbol: "£" }
    , { code: "ERN", name: "Nakfa", numericCode: "232", symbol: "" }
    , { code: "ETB", name: "Ethiopian Birr", numericCode: "230", symbol: "" }
    , { code: "EUR", name: "Euro", numericCode: "978", symbol: "€" }
    , { code: "FJD", name: "Fiji Dollar", numericCode: "242", symbol: "$" }
    , { code: "FKP", name: "Falkland Islands Pound", numericCode: "238", symbol: "£" }
    , { code: "GBP", name: "Pound Sterling", numericCode: "826", symbol: "£" }
    , { code: "GEL", name: "Lari", numericCode: "981", symbol: "" }
    , { code: "GHS", name: "Cedi", numericCode: "936", symbol: "" }
    , { code: "GIP", name: "Gibraltar Pound", numericCode: "292", symbol: "£" }
    , { code: "GMD", name: "Dalasi", numericCode: "270", symbol: "" }
    , { code: "GNF", name: "Guinea Franc", numericCode: "324", symbol: "" }
    , { code: "GTQ", name: "Quetzal", numericCode: "320", symbol: "Q" }
    , { code: "GYD", name: "Guyana Dollar", numericCode: "328", symbol: "$" }
    , { code: "HKD", name: "Hong Kong Dollar", numericCode: "344", symbol: "$" }
    , { code: "HNL", name: "Lempira", numericCode: "340", symbol: "L" }
    , { code: "HTG", name: "Gourde", numericCode: "332", symbol: "" }
    , { code: "HUF", name: "Forint", numericCode: "348", symbol: "Ft" }
    , { code: "IDR", name: "Rupiah", numericCode: "360", symbol: "Rp" }
    , { code: "ILS", name: "New Israeli Sheqel", numericCode: "376", symbol: "₪" }
    , { code: "BTN", name: "Bhutanese Ngultrum", numericCode: "064", symbol: "Nu" }
    , { code: "INR", name: "Indian Rupee", numericCode: "356", symbol: "₹" }
    , { code: "IQD", name: "Iraqi Dinar", numericCode: "368", symbol: "" }
    , { code: "IRR", name: "Iranian Rial", numericCode: "364", symbol: "﷼" }
    , { code: "ISK", name: "Iceland Krona", numericCode: "352", symbol: "kr" }
    , { code: "JMD", name: "Jamaican Dollar", numericCode: "388", symbol: "J$" }
    , { code: "JOD", name: "Jordanian Dinar", numericCode: "400", symbol: "" }
    , { code: "JPY", name: "Yen", numericCode: "392", symbol: "¥" }
    , { code: "KES", name: "Kenyan Shilling", numericCode: "404", symbol: "" }
    , { code: "KGS", name: "Som", numericCode: "417", symbol: "лв" }
    , { code: "KHR", name: "Riel", numericCode: "116", symbol: "៛" }
    , { code: "KMF", name: "Comoro Franc", numericCode: "174", symbol: "" }
    , { code: "KPW", name: "North Korean Won", numericCode: "408", symbol: "₩" }
    , { code: "KRW", name: "Won", numericCode: "410", symbol: "₩" }
    , { code: "KWD", name: "Kuwaiti Dinar", numericCode: "414", symbol: "" }
    , { code: "KYD", name: "Cayman Islands Dollar", numericCode: "136", symbol: "$" }
    , { code: "KZT", name: "Tenge", numericCode: "398", symbol: "лв" }
    , { code: "LAK", name: "Kip", numericCode: "418", symbol: "₭" }
    , { code: "LBP", name: "Lebanese Pound", numericCode: "422", symbol: "£" }
    , { code: "LKR", name: "Sri Lanka Rupee", numericCode: "144", symbol: "₨" }
    , { code: "LRD", name: "Liberian Dollar", numericCode: "430", symbol: "$" }
    , { code: "LYD", name: "Libyan Dinar", numericCode: "434", symbol: "" }
    , { code: "MAD", name: "Moroccan Dirham", numericCode: "504", symbol: "" }
    , { code: "MDL", name: "Moldovan Leu", numericCode: "498", symbol: "" }
    , { code: "MGA", name: "Malagasy Ariary", numericCode: "969", symbol: "" }
    , { code: "MKD", name: "Denar", numericCode: "807", symbol: "ден" }
    , { code: "MMK", name: "Kyat", numericCode: "104", symbol: "" }
    , { code: "MNT", name: "Tugrik", numericCode: "496", symbol: "₮" }
    , { code: "MOP", name: "Pataca", numericCode: "446", symbol: "" }
    , { code: "MRU", name: "Ouguiya", numericCode: "929", symbol: "" }
    , { code: "MUR", name: "Mauritius Rupee", numericCode: "480", symbol: "₨" }
    , { code: "MVR", name: "Rufiyaa", numericCode: "462", symbol: "" }
    , { code: "MWK", name: "Kwacha", numericCode: "454", symbol: "" }
    , { code: "MXN", name: "Mexican Peso", numericCode: "484", symbol: "$" }
    , { code: "MYR", name: "Malaysian Ringgit", numericCode: "458", symbol: "RM" }
    , { code: "MZN", name: "Metical", numericCode: "943", symbol: "MT" }
    , { code: "NGN", name: "Naira", numericCode: "566", symbol: "₦" }
    , { code: "NIO", name: "Cordoba Oro", numericCode: "558", symbol: "C$" }
    , { code: "NOK", name: "Norwegian Krone", numericCode: "578", symbol: "kr" }
    , { code: "NPR", name: "Nepalese Rupee", numericCode: "524", symbol: "₨" }
    , { code: "NZD", name: "New Zealand Dollar", numericCode: "554", symbol: "$" }
    , { code: "OMR", name: "Rial Omani", numericCode: "512", symbol: "﷼" }
    , { code: "PAB", name: "Balboa", numericCode: "590", symbol: "B/." }
    , { code: "PEN", name: "Nuevo Sol", numericCode: "604", symbol: "S/." }
    , { code: "PGK", name: "Kina", numericCode: "598", symbol: "" }
    , { code: "PHP", name: "Philippine Peso", numericCode: "608", symbol: "Php" }
    , { code: "PKR", name: "Pakistan Rupee", numericCode: "586", symbol: "₨" }
    , { code: "PLN", name: "Zloty", numericCode: "985", symbol: "zł" }
    , { code: "PYG", name: "Guarani", numericCode: "600", symbol: "Gs" }
    , { code: "QAR", name: "Qatari Rial", numericCode: "634", symbol: "﷼" }
    , { code: "RON", name: "New Leu", numericCode: "946", symbol: "lei" }
    , { code: "RSD", name: "Serbian Dinar", numericCode: "941", symbol: "Дин." }
    , { code: "RUB", name: "Russian Ruble", numericCode: "643", symbol: "руб" }
    , { code: "RWF", name: "Rwanda Franc", numericCode: "646", symbol: "" }
    , { code: "SAR", name: "Saudi Riyal", numericCode: "682", symbol: "﷼" }
    , { code: "SBD", name: "Solomon Islands Dollar", numericCode: "090", symbol: "$" }
    , { code: "SCR", name: "Seychelles Rupee", numericCode: "690", symbol: "₨" }
    , { code: "SDG", name: "Sudanese Pound", numericCode: "938", symbol: "" }
    , { code: "SEK", name: "Swedish Krona", numericCode: "752", symbol: "kr" }
    , { code: "SGD", name: "Singapore Dollar", numericCode: "702", symbol: "$" }
    , { code: "SHP", name: "Saint Helena Pound", numericCode: "654", symbol: "£" }
    , { code: "SLE", name: "Leone", numericCode: "925", symbol: "" }
    , { code: "SOS", name: "Somali Shilling", numericCode: "706", symbol: "S" }
    , { code: "SRD", name: "Surinam Dollar", numericCode: "968", symbol: "$" }
    , { code: "SSP", name: "South Sudanese pound", numericCode: "728", symbol: "" }
    , { code: "STN", name: "Dobra", numericCode: "930", symbol: "Db" }
    , { code: "SYP", name: "Syrian Pound", numericCode: "760", symbol: "£" }
    , { code: "SZL", name: "Lilangeni", numericCode: "748", symbol: "" }
    , { code: "THB", name: "Baht", numericCode: "764", symbol: "฿" }
    , { code: "TJS", name: "Somoni", numericCode: "972", symbol: "" }
    , { code: "TMT", name: "Manat", numericCode: "934", symbol: "" }
    , { code: "TND", name: "Tunisian Dinar", numericCode: "788", symbol: "" }
    , { code: "TOP", name: "Pa'anga", numericCode: "776", symbol: "" }
    , { code: "TRY", name: "Turkish Lira", numericCode: "949", symbol: "₺" }
    , { code: "TTD", name: "Trinidad and Tobago Dollar", numericCode: "780", symbol: "TT$" }
    , { code: "TWD", name: "New Taiwan Dollar", numericCode: "901", symbol: "NT$" }
    , { code: "TZS", name: "Tanzanian Shilling", numericCode: "834", symbol: "" }
    , { code: "UAH", name: "Hryvnia", numericCode: "980", symbol: "₴" }
    , { code: "UGX", name: "Uganda Shilling", numericCode: "800", symbol: "" }
    , { code: "USD", name: "US Dollar", numericCode: "840", symbol: "$" }
    , { code: "UYU", name: "Peso Uruguayo", numericCode: "858", symbol: "$U" }
    , { code: "UZS", name: "Uzbekistan Sum", numericCode: "860", symbol: "лв" }
    , { code: "VES", name: "Venezuelan bolívar", numericCode: "928", symbol: "Bs" }
    , { code: "VND", name: "Dong", numericCode: "704", symbol: "₫" }
    , { code: "VUV", name: "Vatu", numericCode: "548", symbol: "" }
    , { code: "WST", name: "Tala", numericCode: "882", symbol: "" }
    , { code: "XAF", name: "CFA Franc BEAC", numericCode: "950", symbol: "" }
    , { code: "XCD", name: "East Caribbean Dollar", numericCode: "951", symbol: "$" }
    , { code: "XOF", name: "CFA Franc BCEAO", numericCode: "952", symbol: "" }
    , { code: "XPF", name: "CFP Franc", numericCode: "953", symbol: "" }
    , { code: "YER", name: "Yemeni Rial", numericCode: "886", symbol: "﷼" }
    , { code: "ZAR", name: "Rand", numericCode: "710", symbol: "R" }
    , { code: "LSL", name: "Lesotho Loti", numericCode: "426", symbol: "" }
    , { code: "NAD", name: "Namibia Dollar", numericCode: "516", symbol: "N$" }
    , { code: "ZMW", name: "Zambian Kwacha", numericCode: "967", symbol: "K" }
    , { code: "ZWL", name: "Zimbabwe Dollar", numericCode: "932", symbol: "" }
    ]
