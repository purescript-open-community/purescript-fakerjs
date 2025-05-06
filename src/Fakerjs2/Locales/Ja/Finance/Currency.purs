module Fakerjs2.Locales.Ja.Finance.Currency (currency) where

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
    [ { code: "AED", name: "UAEディルハム", numericCode: "784", symbol: "" }
    , { code: "AFN", name: "アフガニ", numericCode: "971", symbol: "؋" }
    , { code: "ALL", name: "レク", numericCode: "008", symbol: "Lek" }
    , { code: "AMD", name: "ドラム", numericCode: "051", symbol: "" }
    , { code: "ANG", name: "アンティル・ギルダ\x0030fc", numericCode: "532", symbol: "ƒ" }
    , { code: "AOA", name: "クワンザ", numericCode: "973", symbol: "" }
    , { code: "ARS", name: "アルゼンチン・ペソ", numericCode: "032", symbol: "$" }
    , { code: "AUD", name: "オ\x0030fcストラリア・ドル", numericCode: "036", symbol: "$" }
    , { code: "AWG", name: "アルバ・フロリン", numericCode: "533", symbol: "ƒ" }
    , { code: "AZN", name: "アゼルバイジャン・マナト", numericCode: "944", symbol: "ман" }
    , { code: "BAM", name: "兌換マルク", numericCode: "977", symbol: "KM" }
    , { code: "BBD", name: "バルバドス・ドル", numericCode: "052", symbol: "$" }
    , { code: "BDT", name: "タカ", numericCode: "050", symbol: "" }
    , { code: "BGN", name: "レフ", numericCode: "975", symbol: "лв" }
    , { code: "BHD", name: "バ\x0030fcレ\x0030fcン・ディナ\x0030fcル", numericCode: "048", symbol: "" }
    , { code: "BIF", name: "ブルンジ・フラン", numericCode: "108", symbol: "" }
    , { code: "BMD", name: "バミュ\x0030fcダ・ドル", numericCode: "060", symbol: "$" }
    , { code: "BND", name: "ブルネイ・ドル", numericCode: "096", symbol: "$" }
    , { code: "BOB", name: "ボリビア\x0030fcノ", numericCode: "068", symbol: "Bs" }
    , { code: "BRL", name: "レアル", numericCode: "986", symbol: "R$" }
    , { code: "BSD", name: "バハマ・ドル", numericCode: "044", symbol: "$" }
    , { code: "BWP", name: "プラ", numericCode: "072", symbol: "P" }
    , { code: "BYN", name: "ベラル\x0030fcシ・ル\x0030fcブル", numericCode: "933", symbol: "Rbl" }
    , { code: "BZD", name: "ベリ\x0030fcズ・ドル", numericCode: "084", symbol: "BZ$" }
    , { code: "CAD", name: "カナダ・ドル", numericCode: "124", symbol: "$" }
    , { code: "CDF", name: "コンゴ・フラン", numericCode: "976", symbol: "" }
    , { code: "CHF", name: "スイス・フラン", numericCode: "756", symbol: "CHF" }
    , { code: "CLP", name: "チリ・ペソ", numericCode: "152", symbol: "$" }
    , { code: "CNY", name: "人民元", numericCode: "156", symbol: "¥" }
    , { code: "COP", name: "コロンビア・ペソ", numericCode: "170", symbol: "$" }
    , { code: "CRC", name: "コスタリカ・コロン", numericCode: "188", symbol: "₡" }
    , { code: "CUP", name: "キュ\x0030fcバ・ペソ", numericCode: "192", symbol: "₱" }
    , { code: "CVE", name: "カ\x0030fcボベルデ・エスク\x0030fcド", numericCode: "132", symbol: "" }
    , { code: "CZK", name: "チェコ・コルナ", numericCode: "203", symbol: "Kč" }
    , { code: "DJF", name: "ジブチ・フラン", numericCode: "262", symbol: "" }
    , { code: "DKK", name: "デンマ\x0030fcク・クロ\x0030fcネ", numericCode: "208", symbol: "kr" }
    , { code: "DOP", name: "ドミニカ・ペソ", numericCode: "214", symbol: "RD$" }
    , { code: "DZD", name: "アルジェリア・ディナ\x0030fcル", numericCode: "012", symbol: "" }
    , { code: "EGP", name: "エジプト・ポンド", numericCode: "818", symbol: "£" }
    , { code: "ERN", name: "ナクファ", numericCode: "232", symbol: "" }
    , { code: "ETB", name: "ブル", numericCode: "230", symbol: "" }
    , { code: "EUR", name: "ユ\x0030fcロ", numericCode: "978", symbol: "€" }
    , { code: "FJD", name: "フィジ\x0030fc・ドル", numericCode: "242", symbol: "$" }
    , { code: "FKP", name: "フォ\x0030fcクランド諸島・ポンド", numericCode: "238", symbol: "£" }
    , { code: "GBP", name: "スタ\x0030fcリング・ポンド", numericCode: "826", symbol: "£" }
    , { code: "GEL", name: "ラリ", numericCode: "981", symbol: "" }
    , { code: "GHS", name: "セディ", numericCode: "936", symbol: "" }
    , { code: "GIP", name: "ジブラルタル・ポンド", numericCode: "292", symbol: "£" }
    , { code: "GMD", name: "ダラシ", numericCode: "270", symbol: "" }
    , { code: "GNF", name: "ギニア・フラン", numericCode: "324", symbol: "" }
    , { code: "GTQ", name: "ケツァル", numericCode: "320", symbol: "Q" }
    , { code: "GYD", name: "ガイアナ・ドル", numericCode: "328", symbol: "$" }
    , { code: "HKD", name: "香港ドル", numericCode: "344", symbol: "$" }
    , { code: "HNL", name: "レンピラ", numericCode: "340", symbol: "L" }
    , { code: "HTG", name: "グ\x0030fcルド", numericCode: "332", symbol: "" }
    , { code: "HUF", name: "フォリント", numericCode: "348", symbol: "Ft" }
    , { code: "IDR", name: "ルピア", numericCode: "360", symbol: "Rp" }
    , { code: "ILS", name: "新シェケル", numericCode: "376", symbol: "₪" }
    , { code: "BTN", name: "ブ\x0030fcタン・ニュルタム", numericCode: "064", symbol: "Nu" }
    , { code: "INR", name: "インド・ルピ\x0030fc", numericCode: "356", symbol: "₹" }
    , { code: "IQD", name: "イラク・ディナ\x0030fcル", numericCode: "368", symbol: "" }
    , { code: "IRR", name: "イラン・リヤル", numericCode: "364", symbol: "﷼" }
    , { code: "ISK", name: "アイスランド・クロ\x0030fcナ", numericCode: "352", symbol: "kr" }
    , { code: "JMD", name: "ジャマイカ・ドル", numericCode: "388", symbol: "J$" }
    , { code: "JOD", name: "ヨルダン・ディナ\x0030fcル", numericCode: "400", symbol: "" }
    , { code: "JPY", name: "円", numericCode: "392", symbol: "¥" }
    , { code: "KES", name: "ケニア・シリング", numericCode: "404", symbol: "" }
    , { code: "KGS", name: "ソム", numericCode: "417", symbol: "лв" }
    , { code: "KHR", name: "リエル", numericCode: "116", symbol: "៛" }
    , { code: "KMF", name: "コモロ・フラン", numericCode: "174", symbol: "" }
    , { code: "KPW", name: "北朝鮮ウォン", numericCode: "408", symbol: "₩" }
    , { code: "KRW", name: "韓国ウォン", numericCode: "410", symbol: "₩" }
    , { code: "KWD", name: "クウェ\x0030fcト・ディナ\x0030fcル", numericCode: "414", symbol: "" }
    , { code: "KYD", name: "ケイマン諸島・ドル", numericCode: "136", symbol: "$" }
    , { code: "KZT", name: "テンゲ", numericCode: "398", symbol: "лв" }
    , { code: "LAK", name: "キ\x0030fcプ", numericCode: "418", symbol: "₭" }
    , { code: "LBP", name: "レバノン・ポンド", numericCode: "422", symbol: "£" }
    , { code: "LKR", name: "スリランカ・ルピ\x0030fc", numericCode: "144", symbol: "₨" }
    , { code: "LRD", name: "リベリア・ドル", numericCode: "430", symbol: "$" }
    , { code: "LYD", name: "リビア・ディナ\x0030fcル", numericCode: "434", symbol: "" }
    , { code: "MAD", name: "モロッコ・ディルハム", numericCode: "504", symbol: "" }
    , { code: "MDL", name: "モルドバ・レウ", numericCode: "498", symbol: "" }
    , { code: "MGA", name: "マダガスカル・アリアリ", numericCode: "969", symbol: "" }
    , { code: "MKD", name: "マケドニア・デナ\x0030fcル", numericCode: "807", symbol: "ден" }
    , { code: "MMK", name: "チャット", numericCode: "104", symbol: "" }
    , { code: "MNT", name: "トゥグルグ", numericCode: "496", symbol: "₮" }
    , { code: "MOP", name: "マカオ・パタカ", numericCode: "446", symbol: "" }
    , { code: "MRU", name: "ウギア", numericCode: "929", symbol: "" }
    , { code: "MUR", name: "モ\x0030fcリシャス・ルピ\x0030fc", numericCode: "480", symbol: "₨" }
    , { code: "MVR", name: "ルフィヤ", numericCode: "462", symbol: "" }
    , { code: "MWK", name: "マラウイ・クワチャ", numericCode: "454", symbol: "" }
    , { code: "MXN", name: "メキシコ・ペソ", numericCode: "484", symbol: "$" }
    , { code: "MYR", name: "リンギット", numericCode: "458", symbol: "RM" }
    , { code: "MZN", name: "メティカル", numericCode: "943", symbol: "MT" }
    , { code: "NGN", name: "ナイラ", numericCode: "566", symbol: "₦" }
    , { code: "NIO", name: "コルドバ・オロ", numericCode: "558", symbol: "C$" }
    , { code: "NOK", name: "ノルウェ\x0030fc・クロ\x0030fcネ", numericCode: "578", symbol: "kr" }
    , { code: "NPR", name: "ネパ\x0030fcル・ルピ\x0030fc", numericCode: "524", symbol: "₨" }
    , { code: "NZD", name: "ニュ\x0030fcジ\x0030fcランド・ドル", numericCode: "554", symbol: "$" }
    , { code: "OMR", name: "オマ\x0030fcン・リアル", numericCode: "512", symbol: "﷼" }
    , { code: "PAB", name: "バルボア", numericCode: "590", symbol: "B/." }
    , { code: "PEN", name: "ヌエボ・ソル", numericCode: "604", symbol: "S/." }
    , { code: "PGK", name: "キナ", numericCode: "598", symbol: "" }
    , { code: "PHP", name: "フィリピン・ペソ", numericCode: "608", symbol: "Php" }
    , { code: "PKR", name: "パキスタン・ルピ\x0030fc", numericCode: "586", symbol: "₨" }
    , { code: "PLN", name: "ズウォティ", numericCode: "985", symbol: "zł" }
    , { code: "PYG", name: "グアラニ\x0030fc", numericCode: "600", symbol: "Gs" }
    , { code: "QAR", name: "カタ\x0030fcル・リアル", numericCode: "634", symbol: "﷼" }
    , { code: "RON", name: "ル\x0030fcマニア・レウ", numericCode: "946", symbol: "lei" }
    , { code: "RSD", name: "セルビア・ディナ\x0030fcル", numericCode: "941", symbol: "Дин." }
    , { code: "RUB", name: "ロシア・ル\x0030fcブル", numericCode: "643", symbol: "руб" }
    , { code: "RWF", name: "ルワンダ・フラン", numericCode: "646", symbol: "" }
    , { code: "SAR", name: "サウディ・リヤル", numericCode: "682", symbol: "﷼" }
    , { code: "SBD", name: "ソロモン諸島ドル", numericCode: "090", symbol: "$" }
    , { code: "SCR", name: "セ\x0030fcシェル・ルピ\x0030fc", numericCode: "690", symbol: "₨" }
    , { code: "SDG", name: "ス\x0030fcダン・ポンド", numericCode: "938", symbol: "" }
    , { code: "SEK", name: "スウェ\x0030fcデン・クロ\x0030fcナ", numericCode: "752", symbol: "kr" }
    , { code: "SGD", name: "シンガポ\x0030fcル・ドル", numericCode: "702", symbol: "$" }
    , { code: "SHP", name: "セントヘレナ・ポンド", numericCode: "654", symbol: "£" }
    , { code: "SLE", name: "レオン", numericCode: "925", symbol: "" }
    , { code: "SOS", name: "ソマリア・シリング", numericCode: "706", symbol: "S" }
    , { code: "SRD", name: "スリナム・ドル", numericCode: "968", symbol: "$" }
    , { code: "SSP", name: "南ス\x0030fcダン・ポンド", numericCode: "728", symbol: "" }
    , { code: "STN", name: "ドブラ", numericCode: "930", symbol: "Db" }
    , { code: "SYP", name: "シリア・ポンド", numericCode: "760", symbol: "£" }
    , { code: "SZL", name: "リランゲニ", numericCode: "748", symbol: "" }
    , { code: "THB", name: "バ\x0030fcツ", numericCode: "764", symbol: "฿" }
    , { code: "TJS", name: "ソモニ", numericCode: "972", symbol: "" }
    , { code: "TMT", name: "マナト", numericCode: "934", symbol: "" }
    , { code: "TND", name: "チュニジア・ディナ\x0030fcル", numericCode: "788", symbol: "" }
    , { code: "TOP", name: "パアンガ", numericCode: "776", symbol: "" }
    , { code: "TRY", name: "トルコ・リラ", numericCode: "949", symbol: "₺" }
    , { code: "TTD", name: "トリニダ\x0030fcド・トバゴ・ドル", numericCode: "780", symbol: "TT$" }
    , { code: "TWD", name: "新台湾ドル", numericCode: "901", symbol: "NT$" }
    , { code: "TZS", name: "タンザニア・シリング", numericCode: "834", symbol: "" }
    , { code: "UAH", name: "フリヴニャ", numericCode: "980", symbol: "₴" }
    , { code: "UGX", name: "ウガンダ・シリング", numericCode: "800", symbol: "" }
    , { code: "USD", name: "米ドル", numericCode: "840", symbol: "$" }
    , { code: "UYU", name: "ウルグアイ・ペソ", numericCode: "858", symbol: "$U" }
    , { code: "UZS", name: "ウズベキスタン・スム", numericCode: "860", symbol: "лв" }
    , { code: "VES", name: "ベネズエラ・ボリバル", numericCode: "928", symbol: "Bs" }
    , { code: "VND", name: "ドン", numericCode: "704", symbol: "₫" }
    , { code: "VUV", name: "バツ", numericCode: "548", symbol: "" }
    , { code: "WST", name: "タラ", numericCode: "882", symbol: "" }
    , { code: "XAF", name: "中央アフリカCFAフラン", numericCode: "950", symbol: "" }
    , { code: "XCD", name: "東カリブ・ドル", numericCode: "951", symbol: "$" }
    , { code: "XOF", name: "西アフリカCFAフラン", numericCode: "952", symbol: "" }
    , { code: "XPF", name: "CFPフラン", numericCode: "953", symbol: "" }
    , { code: "YER", name: "イエメン・リアル", numericCode: "886", symbol: "﷼" }
    , { code: "ZAR", name: "ランド", numericCode: "710", symbol: "R" }
    , { code: "LSL", name: "ロチ", numericCode: "426", symbol: "" }
    , { code: "NAD", name: "ナミビア・ドル", numericCode: "516", symbol: "N$" }
    , { code: "ZMW", name: "ザンビア・クワチャ", numericCode: "967", symbol: "K" }
    , { code: "ZWL", name: "ジンバブエ・ドル", numericCode: "932", symbol: "" }
    ]
