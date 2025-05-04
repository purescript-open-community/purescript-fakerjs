module Fakerjs2.Locales.ZhCn.Location.Language (language) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

language =
  ( unsafeCoerce
      :: Array { alpha2 :: String, alpha3 :: String, name :: String }
      -> NonEmptyArray { alpha2 :: NonEmptyString, alpha3 :: NonEmptyString, name :: NonEmptyString }
  )
    [ { alpha2: "zh", alpha3: "zho", name: "汉语" }
    , { alpha2: "en", alpha3: "eng", name: "英语" }
    , { alpha2: "fr", alpha3: "fra", name: "法语" }
    , { alpha2: "de", alpha3: "deu", name: "德语" }
    , { alpha2: "es", alpha3: "spa", name: "西班牙语" }
    , { alpha2: "ru", alpha3: "rus", name: "俄语" }
    , { alpha2: "ja", alpha3: "jpn", name: "日语" }
    , { alpha2: "ko", alpha3: "kor", name: "韩语" }
    , { alpha2: "ar", alpha3: "ara", name: "阿拉伯语" }
    , { alpha2: "pt", alpha3: "por", name: "葡萄牙语" }
    , { alpha2: "it", alpha3: "ita", name: "意大利语" }
    , { alpha2: "nl", alpha3: "nld", name: "荷兰语" }
    , { alpha2: "th", alpha3: "tha", name: "泰语" }
    , { alpha2: "hi", alpha3: "hin", name: "印度语" }
    , { alpha2: "bn", alpha3: "ben", name: "孟加拉语" }
    , { alpha2: "id", alpha3: "ind", name: "印尼语" }
    , { alpha2: "ms", alpha3: "msa", name: "马来语" }
    , { alpha2: "vi", alpha3: "vie", name: "越南语" }
    , { alpha2: "ur", alpha3: "urd", name: "乌尔都语" }
    , { alpha2: "fi", alpha3: "fin", name: "芬兰语" }
    , { alpha2: "sv", alpha3: "swe", name: "瑞典语" }
    , { alpha2: "el", alpha3: "ell", name: "希腊语" }
    , { alpha2: "cs", alpha3: "ces", name: "捷克语" }
    , { alpha2: "hu", alpha3: "hun", name: "匈牙利语" }
    , { alpha2: "ro", alpha3: "ron", name: "罗马尼亚语" }
    , { alpha2: "uk", alpha3: "ukr", name: "乌克兰语" }
    , { alpha2: "sr", alpha3: "srp", name: "塞尔维亚语" }
    , { alpha2: "hr", alpha3: "hrv", name: "克罗地亚语" }
    , { alpha2: "sk", alpha3: "slk", name: "斯洛伐克语" }
    , { alpha2: "sl", alpha3: "slv", name: "斯洛文尼亚语" }
    , { alpha2: "ga", alpha3: "gle", name: "爱尔兰语" }
    , { alpha2: "lv", alpha3: "lav", name: "拉脱维亚语" }
    , { alpha2: "lt", alpha3: "lit", name: "立陶宛语" }
    , { alpha2: "et", alpha3: "est", name: "爱沙尼亚语" }
    , { alpha2: "mt", alpha3: "mlt", name: "马耳他语" }
    , { alpha2: "sq", alpha3: "sqi", name: "阿尔巴尼亚语" }
    , { alpha2: "ro", alpha3: "ron", name: "摩尔多瓦语" }
    , { alpha2: "ka", alpha3: "kat", name: "格鲁吉亚语" }
    , { alpha2: "hy", alpha3: "hye", name: "亚美尼亚语" }
    , { alpha2: "kk", alpha3: "kaz", name: "哈萨克语" }
    , { alpha2: "ky", alpha3: "kir", name: "吉尔吉斯语" }
    ]
