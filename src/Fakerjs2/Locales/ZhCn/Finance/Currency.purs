module Fakerjs2.Locales.ZhCn.Finance.Currency (currency) where

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
    [ { code: "AED", name: "阿联酋迪拉姆", numericCode: "784", symbol: "" }
    , { code: "AFN", name: "阿富汗尼", numericCode: "971", symbol: "؋" }
    , { code: "ALL", name: "列克", numericCode: "008", symbol: "Lek" }
    , { code: "AMD", name: "亚美尼亚德拉姆", numericCode: "051", symbol: "" }
    , { code: "ANG", name: "荷属安的列斯盾", numericCode: "532", symbol: "ƒ" }
    , { code: "AOA", name: "宽扎", numericCode: "973", symbol: "" }
    , { code: "ARS", name: "阿根廷比索", numericCode: "032", symbol: "$" }
    , { code: "AUD", name: "澳大利亚元", numericCode: "036", symbol: "$" }
    , { code: "AWG", name: "阿鲁巴弗罗林", numericCode: "533", symbol: "ƒ" }
    , { code: "AZN", name: "阿塞拜疆马纳特", numericCode: "944", symbol: "ман" }
    , { code: "BAM", name: "可兑换马克", numericCode: "977", symbol: "KM" }
    , { code: "BBD", name: "巴巴多斯元", numericCode: "052", symbol: "$" }
    , { code: "BDT", name: "孟加拉塔卡", numericCode: "050", symbol: "" }
    , { code: "BGN", name: "保加利亚列弗", numericCode: "975", symbol: "лв" }
    , { code: "BHD", name: "巴林第纳尔", numericCode: "048", symbol: "" }
    , { code: "BIF", name: "布隆迪法郎", numericCode: "108", symbol: "" }
    , { code: "BMD", name: "百慕大元（通常称为百慕大元）", numericCode: "060", symbol: "$" }
    , { code: "BND", name: "文莱元", numericCode: "096", symbol: "$" }
    , { code: "BOB", name: "玻利维亚诺", numericCode: "068", symbol: "Bs" }
    , { code: "BRL", name: "巴西雷亚尔", numericCode: "986", symbol: "R$" }
    , { code: "BSD", name: "巴哈马元", numericCode: "044", symbol: "$" }
    , { code: "BWP", name: "普拉", numericCode: "072", symbol: "P" }
    , { code: "BYN", name: "白俄罗斯卢布", numericCode: "933", symbol: "Rbl" }
    , { code: "BZD", name: "伯利兹元", numericCode: "084", symbol: "BZ$" }
    , { code: "CAD", name: "加拿大元", numericCode: "124", symbol: "$" }
    , { code: "CDF", name: "刚果法郎", numericCode: "976", symbol: "" }
    , { code: "CHF", name: "瑞士法郎", numericCode: "756", symbol: "CHF" }
    , { code: "CLP", name: "智利比索", numericCode: "152", symbol: "$" }
    , { code: "CNY", name: "人民币", numericCode: "156", symbol: "¥" }
    , { code: "COP", name: "哥伦比亚比索", numericCode: "170", symbol: "$" }
    , { code: "CRC", name: "哥斯达黎加科朗", numericCode: "188", symbol: "₡" }
    , { code: "CUP", name: "古巴比索", numericCode: "192", symbol: "₱" }
    , { code: "CVE", name: "佛得角埃斯库多", numericCode: "132", symbol: "" }
    , { code: "CZK", name: "捷克克朗", numericCode: "203", symbol: "Kč" }
    , { code: "DJF", name: "吉布提法郎", numericCode: "262", symbol: "" }
    , { code: "DKK", name: "丹麦克朗", numericCode: "208", symbol: "kr" }
    , { code: "DOP", name: "多米尼加比索", numericCode: "214", symbol: "RD$" }
    , { code: "DZD", name: "阿尔及利亚第纳尔", numericCode: "012", symbol: "" }
    , { code: "EGP", name: "埃及镑", numericCode: "818", symbol: "£" }
    , { code: "ERN", name: "纳克法", numericCode: "232", symbol: "" }
    , { code: "ETB", name: "埃塞俄比亚比尔", numericCode: "230", symbol: "" }
    , { code: "EUR", name: "欧元", numericCode: "978", symbol: "€" }
    , { code: "FJD", name: "斐济元", numericCode: "242", symbol: "$" }
    , { code: "FKP", name: "福克兰群岛镑", numericCode: "238", symbol: "£" }
    , { code: "GBP", name: "英镑", numericCode: "826", symbol: "£" }
    , { code: "GEL", name: "格鲁吉亚拉里", numericCode: "981", symbol: "" }
    , { code: "GHS", name: "塞地", numericCode: "936", symbol: "" }
    , { code: "GIP", name: "直布罗陀镑", numericCode: "292", symbol: "£" }
    , { code: "GMD", name: "达尔西", numericCode: "270", symbol: "" }
    , { code: "GNF", name: "几内亚法郎", numericCode: "324", symbol: "" }
    , { code: "GTQ", name: "格查尔", numericCode: "320", symbol: "Q" }
    , { code: "GYD", name: "圭亚那元", numericCode: "328", symbol: "$" }
    , { code: "HKD", name: "港元", numericCode: "344", symbol: "$" }
    , { code: "HNL", name: "伦皮拉", numericCode: "340", symbol: "L" }
    , { code: "HTG", name: "古德", numericCode: "332", symbol: "" }
    , { code: "HUF", name: "福林特", numericCode: "348", symbol: "Ft" }
    , { code: "IDR", name: "印度尼西亚卢比", numericCode: "360", symbol: "Rp" }
    , { code: "ILS", name: "新以色列谢克尔", numericCode: "376", symbol: "₪" }
    , { code: "BTN", name: "不丹努扎姆", numericCode: "064", symbol: "Nu" }
    , { code: "INR", name: "印度卢比", numericCode: "356", symbol: "₹" }
    , { code: "IQD", name: "伊拉克第纳尔", numericCode: "368", symbol: "" }
    , { code: "IRR", name: "伊朗里亚尔", numericCode: "364", symbol: "﷼" }
    , { code: "ISK", name: "冰岛克朗", numericCode: "352", symbol: "kr" }
    , { code: "JMD", name: "牙买加元", numericCode: "388", symbol: "J$" }
    , { code: "JOD", name: "约旦第纳尔", numericCode: "400", symbol: "" }
    , { code: "JPY", name: "日元", numericCode: "392", symbol: "¥" }
    , { code: "KES", name: "肯尼亚先令", numericCode: "404", symbol: "" }
    , { code: "KGS", name: "吉尔吉斯斯坦索姆", numericCode: "417", symbol: "лв" }
    , { code: "KHR", name: "瑞尔", numericCode: "116", symbol: "៛" }
    , { code: "KMF", name: "科摩罗法郎", numericCode: "174", symbol: "" }
    , { code: "KPW", name: "朝鲜圆", numericCode: "408", symbol: "₩" }
    , { code: "KRW", name: "韩元", numericCode: "410", symbol: "₩" }
    , { code: "KWD", name: "科威特第纳尔", numericCode: "414", symbol: "" }
    , { code: "KYD", name: "开曼群岛元", numericCode: "136", symbol: "$" }
    , { code: "KZT", name: "坚戈", numericCode: "398", symbol: "лв" }
    , { code: "LAK", name: "基普", numericCode: "418", symbol: "₭" }
    , { code: "LBP", name: "黎巴嫩镑", numericCode: "422", symbol: "£" }
    , { code: "LKR", name: "斯里兰卡卢比", numericCode: "144", symbol: "₨" }
    , { code: "LRD", name: "利比里亚元", numericCode: "430", symbol: "$" }
    , { code: "LYD", name: "利比亚第纳尔", numericCode: "434", symbol: "" }
    , { code: "MAD", name: "摩洛哥迪拉姆", numericCode: "504", symbol: "" }
    , { code: "MDL", name: "摩尔多瓦列伊", numericCode: "498", symbol: "" }
    , { code: "MGA", name: "马达加斯加阿里亚里", numericCode: "969", symbol: "" }
    , { code: "MKD", name: "马其顿代纳尔", numericCode: "807", symbol: "ден" }
    , { code: "MMK", name: "缅甸元", numericCode: "104", symbol: "" }
    , { code: "MNT", name: "图格里克", numericCode: "496", symbol: "₮" }
    , { code: "MOP", name: "澳门元", numericCode: "446", symbol: "" }
    , { code: "MRU", name: "乌吉亚", numericCode: "929", symbol: "" }
    , { code: "MUR", name: "毛里求斯卢比", numericCode: "480", symbol: "₨" }
    , { code: "MVR", name: "拉菲亚", numericCode: "462", symbol: "" }
    , { code: "MWK", name: "克瓦查", numericCode: "454", symbol: "" }
    , { code: "MXN", name: "墨西哥比索", numericCode: "484", symbol: "$" }
    , { code: "MYR", name: "马来西亚林吉特", numericCode: "458", symbol: "RM" }
    , { code: "MZN", name: "莫桑比克梅蒂卡尔", numericCode: "943", symbol: "MT" }
    , { code: "NGN", name: "奈拉", numericCode: "566", symbol: "₦" }
    , { code: "NIO", name: "科多巴金科多巴", numericCode: "558", symbol: "C$" }
    , { code: "NOK", name: "挪威克朗", numericCode: "578", symbol: "kr" }
    , { code: "NPR", name: "尼泊尔卢比", numericCode: "524", symbol: "₨" }
    , { code: "NZD", name: "新西兰元", numericCode: "554", symbol: "$" }
    , { code: "OMR", name: "阿曼里亚尔", numericCode: "512", symbol: "﷼" }
    , { code: "PAB", name: "巴尔博亚", numericCode: "590", symbol: "B/." }
    , { code: "PEN", name: "秘鲁新索尔", numericCode: "604", symbol: "S/." }
    , { code: "PGK", name: "基纳", numericCode: "598", symbol: "" }
    , { code: "PHP", name: "菲律宾比索", numericCode: "608", symbol: "Php" }
    , { code: "PKR", name: "巴基斯坦卢比", numericCode: "586", symbol: "₨" }
    , { code: "PLN", name: "兹罗提", numericCode: "985", symbol: "zł" }
    , { code: "PYG", name: "巴拉圭瓜拉尼", numericCode: "600", symbol: "Gs" }
    , { code: "QAR", name: "卡塔尔里亚尔", numericCode: "634", symbol: "﷼" }
    , { code: "RON", name: "新卢", numericCode: "946", symbol: "lei" }
    , { code: "RSD", name: "塞尔维亚第纳尔", numericCode: "941", symbol: "Дин." }
    , { code: "RUB", name: "俄罗斯卢布", numericCode: "643", symbol: "руб" }
    , { code: "RWF", name: "卢旺达法郎", numericCode: "646", symbol: "" }
    , { code: "SAR", name: "沙特里亚尔", numericCode: "682", symbol: "﷼" }
    , { code: "SBD", name: "所罗门群岛元", numericCode: "090", symbol: "$" }
    , { code: "SCR", name: "塞舌尔卢比", numericCode: "690", symbol: "₨" }
    , { code: "SDG", name: "苏丹镑", numericCode: "938", symbol: "" }
    , { code: "SEK", name: "瑞典克朗", numericCode: "752", symbol: "kr" }
    , { code: "SGD", name: "新加坡元", numericCode: "702", symbol: "$" }
    , { code: "SHP", name: "圣赫勒拿镑", numericCode: "654", symbol: "£" }
    , { code: "SLE", name: "利昂", numericCode: "925", symbol: "" }
    , { code: "SOS", name: "索马里先令", numericCode: "706", symbol: "S" }
    , { code: "SRD", name: "苏里南元", numericCode: "968", symbol: "$" }
    , { code: "SSP", name: "南苏丹镑", numericCode: "728", symbol: "" }
    , { code: "STN", name: "多布拉", numericCode: "930", symbol: "Db" }
    , { code: "SYP", name: "叙利亚镑", numericCode: "760", symbol: "£" }
    , { code: "SZL", name: "利兰吉尼", numericCode: "748", symbol: "" }
    , { code: "THB", name: "泰铢", numericCode: "764", symbol: "฿" }
    , { code: "TJS", name: "索莫尼", numericCode: "972", symbol: "" }
    , { code: "TMT", name: "马纳特", numericCode: "934", symbol: "" }
    , { code: "TND", name: "突尼斯第纳尔", numericCode: "788", symbol: "" }
    , { code: "TOP", name: "帕安加", numericCode: "776", symbol: "" }
    , { code: "TRY", name: "土耳其里拉", numericCode: "949", symbol: "₺" }
    , { code: "TTD", name: "特立尼达和多巴哥元", numericCode: "780", symbol: "TT$" }
    , { code: "TWD", name: "新台币", numericCode: "901", symbol: "NT$" }
    , { code: "TZS", name: "坦桑尼亚先令", numericCode: "834", symbol: "" }
    , { code: "UAH", name: "格里夫尼亚", numericCode: "980", symbol: "₴" }
    , { code: "UGX", name: "乌干达先令", numericCode: "800", symbol: "" }
    , { code: "USD", name: "美元", numericCode: "840", symbol: "$" }
    , { code: "UYU", name: "乌拉圭比索", numericCode: "858", symbol: "$U" }
    , { code: "UZS", name: "乌兹别克索姆", numericCode: "860", symbol: "лв" }
    , { code: "VES", name: "委内瑞拉玻利瓦尔", numericCode: "928", symbol: "Bs" }
    , { code: "VND", name: "越南盾", numericCode: "704", symbol: "₫" }
    , { code: "VUV", name: "瓦图", numericCode: "548", symbol: "" }
    , { code: "WST", name: "塔拉", numericCode: "882", symbol: "" }
    , { code: "XAF", name: "科姆罗尔法郎", numericCode: "950", symbol: "" }
    , { code: "XAG", name: "银", numericCode: "961", symbol: "XAG" }
    , { code: "XAU", name: "金", numericCode: "959", symbol: "XAU" }
    , { code: "XCD", name: "东加勒比元", numericCode: "951", symbol: "$" }
    , { code: "XDR", name: "特别提款权", numericCode: "960", symbol: "XDR" }
    , { code: "XOF", name: "中非金融合作法郎", numericCode: "952", symbol: "" }
    , { code: "XPF", name: "波利尼西亚法郎", numericCode: "953", symbol: "" }
    , { code: "YER", name: "也门里亚尔", numericCode: "886", symbol: "﷼" }
    , { code: "ZAR", name: "南非兰特", numericCode: "710", symbol: "R" }
    , { code: "ZMW", name: "赞比亚克瓦查", numericCode: "967", symbol: "ZK" }
    , { code: "ZWL", name: "津巴布韦元", numericCode: "932", symbol: "$" }
    ]
