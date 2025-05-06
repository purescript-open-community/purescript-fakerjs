module Fakerjs2.Locales.Ur.Location.Language (language) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

language =
  ( unsafeCoerce
      :: Array { alpha2 :: String, alpha3 :: String, name :: String }
      -> NonEmptyArray { alpha2 :: NonEmptyString, alpha3 :: NonEmptyString, name :: NonEmptyString }
  )
    [ { alpha2: "ps", alpha3: "pus", name: "پشتو" }
    , { alpha2: "ur", alpha3: "urd", name: "اردو" }
    , { alpha2: "en", alpha3: "eng", name: "انگریزی" }
    , { alpha2: "de", alpha3: "deu", name: "جرمن" }
    , { alpha2: "fr", alpha3: "fra", name: "فرانسیسی" }
    , { alpha2: "es", alpha3: "spa", name: "اسپینش" }
    , { alpha2: "nl", alpha3: "nld", name: "دچ" }
    , { alpha2: "ru", alpha3: "rus", name: "روسی" }
    , { alpha2: "pt", alpha3: "por", name: "پرتگالی" }
    , { alpha2: "pl", alpha3: "pol", name: "پولش" }
    , { alpha2: "ar", alpha3: "ara", name: "عربی" }
    , { alpha2: "ja", alpha3: "jpn", name: "جاپانی" }
    , { alpha2: "zh", alpha3: "zho", name: "چینی" }
    , { alpha2: "hi", alpha3: "hin", name: "ہندی" }
    , { alpha2: "bn", alpha3: "ben", name: "بنگالی" }
    , { alpha2: "ta", alpha3: "tam", name: "تمل" }
    , { alpha2: "te", alpha3: "tel", name: "تلگو" }
    , { alpha2: "pa", alpha3: "pan", name: "پنجابی" }
    , { alpha2: "tr", alpha3: "tur", name: "ترکی" }
    , { alpha2: "sv", alpha3: "swe", name: "سویڈش" }
    , { alpha2: "el", alpha3: "ell", name: "یونانی" }
    , { alpha2: "cs", alpha3: "ces", name: "چیک" }
    , { alpha2: "hu", alpha3: "hun", name: "ہنگرین" }
    , { alpha2: "no", alpha3: "nor", name: "نارویجن" }
    , { alpha2: "hr", alpha3: "hrv", name: "کروشیائی" }
    , { alpha2: "sk", alpha3: "slk", name: "سلوواک" }
    , { alpha2: "sl", alpha3: "slv", name: "سلووینیائی" }
    , { alpha2: "fi", alpha3: "fin", name: "فنش" }
    , { alpha2: "da", alpha3: "dan", name: "دنش" }
    , { alpha2: "mt", alpha3: "mlt", name: "مالٹی" }
    , { alpha2: "tg", alpha3: "tgk", name: "تاجک" }
    ]
