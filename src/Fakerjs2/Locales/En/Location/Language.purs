module Fakerjs2.Locales.En.Location.Language (language) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

language =
  ( unsafeCoerce
      :: Array { alpha2 :: String, alpha3 :: String, name :: String }
      -> NonEmptyArray { alpha2 :: NonEmptyString, alpha3 :: NonEmptyString, name :: NonEmptyString }
  )
    [ { alpha2: "af", alpha3: "afr", name: "Afrikaans" }
    , { alpha2: "az", alpha3: "aze", name: "Azerbaijani" }
    , { alpha2: "dv", alpha3: "div", name: "Maldivian" }
    , { alpha2: "fa", alpha3: "fas", name: "Farsi/Persian" }
    , { alpha2: "lv", alpha3: "lav", name: "Latvian" }
    , { alpha2: "id", alpha3: "ind", name: "Indonesian" }
    , { alpha2: "ne", alpha3: "nep", name: "Nepali" }
    , { alpha2: "th", alpha3: "tha", name: "Thai" }
    , { alpha2: "uz", alpha3: "uzb", name: "Uzbek" }
    , { alpha2: "yo", alpha3: "yor", name: "Yoruba" }
    , { alpha2: "ps", alpha3: "pus", name: "Pashto" }
    , { alpha2: "en", alpha3: "eng", name: "English" }
    , { alpha2: "ur", alpha3: "urd", name: "Urdu" }
    , { alpha2: "de", alpha3: "deu", name: "German" }
    , { alpha2: "fr", alpha3: "fra", name: "French" }
    , { alpha2: "es", alpha3: "spa", name: "Spanish" }
    , { alpha2: "it", alpha3: "ita", name: "Italian" }
    , { alpha2: "nl", alpha3: "nld", name: "Dutch" }
    , { alpha2: "ru", alpha3: "rus", name: "Russian" }
    , { alpha2: "pt", alpha3: "por", name: "Portuguese" }
    , { alpha2: "pl", alpha3: "pol", name: "Polish" }
    , { alpha2: "ar", alpha3: "ara", name: "Arabic" }
    , { alpha2: "ja", alpha3: "jpn", name: "Japanese" }
    , { alpha2: "zh", alpha3: "zho", name: "Chinese" }
    , { alpha2: "hi", alpha3: "hin", name: "Hindi" }
    , { alpha2: "bn", alpha3: "ben", name: "Bengali" }
    , { alpha2: "gu", alpha3: "guj", name: "Gujarati" }
    , { alpha2: "ta", alpha3: "tam", name: "Tamil" }
    , { alpha2: "te", alpha3: "tel", name: "Telugu" }
    , { alpha2: "pa", alpha3: "pan", name: "Punjabi" }
    , { alpha2: "vi", alpha3: "vie", name: "Vietnamese" }
    , { alpha2: "ko", alpha3: "kor", name: "Korean" }
    , { alpha2: "tr", alpha3: "tur", name: "Turkish" }
    , { alpha2: "sv", alpha3: "swe", name: "Swedish" }
    , { alpha2: "el", alpha3: "ell", name: "Greek" }
    , { alpha2: "cs", alpha3: "ces", name: "Czech" }
    , { alpha2: "hu", alpha3: "hun", name: "Hungarian" }
    , { alpha2: "ro", alpha3: "ron", name: "Romanian" }
    , { alpha2: "uk", alpha3: "ukr", name: "Ukrainian" }
    , { alpha2: "no", alpha3: "nor", name: "Norwegian" }
    , { alpha2: "sr", alpha3: "srp", name: "Serbian" }
    , { alpha2: "hr", alpha3: "hrv", name: "Croatian" }
    , { alpha2: "sk", alpha3: "slk", name: "Slovak" }
    , { alpha2: "sl", alpha3: "slv", name: "Slovenian" }
    , { alpha2: "is", alpha3: "isl", name: "Icelandic" }
    , { alpha2: "fi", alpha3: "fin", name: "Finnish" }
    , { alpha2: "da", alpha3: "dan", name: "Danish" }
    , { alpha2: "sw", alpha3: "swa", name: "Swahili" }
    , { alpha2: "ba", alpha3: "bak", name: "Bashkir" }
    , { alpha2: "eu", alpha3: "eus", name: "Basque" }
    , { alpha2: "ca", alpha3: "cat", name: "Catalan" }
    , { alpha2: "gl", alpha3: "glg", name: "Galician" }
    , { alpha2: "eo", alpha3: "epo", name: "Esperanto" }
    , { alpha2: "fj", alpha3: "fij", name: "Fijian" }
    , { alpha2: "mg", alpha3: "mlg", name: "Malagasy" }
    , { alpha2: "mt", alpha3: "mlt", name: "Maltese" }
    , { alpha2: "sq", alpha3: "sqi", name: "Albanian" }
    , { alpha2: "hy", alpha3: "hye", name: "Armenian" }
    , { alpha2: "ka", alpha3: "kat", name: "Georgian" }
    , { alpha2: "mk", alpha3: "mkd", name: "Macedonian" }
    , { alpha2: "kk", alpha3: "kaz", name: "Kazakh" }
    , { alpha2: "ht", alpha3: "hat", name: "Haitian Creole" }
    , { alpha2: "mn", alpha3: "mon", name: "Mongolian" }
    , { alpha2: "ky", alpha3: "kir", name: "Kyrgyz" }
    , { alpha2: "fi", alpha3: "fin", name: "Finnish" }
    , { alpha2: "tl", alpha3: "tgl", name: "Tagalog" }
    , { alpha2: "ms", alpha3: "msa", name: "Malay" }
    , { alpha2: "tg", alpha3: "tgk", name: "Tajik" }
    , { alpha2: "ss", alpha3: "ssw", name: "Swati" }
    , { alpha2: "tt", alpha3: "tat", name: "Tatar" }
    , { alpha2: "zu", alpha3: "zul", name: "Zulu" }
    ]
