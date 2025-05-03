module Fakerjs2.Locales.Fa.Music.Genre (genre) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Genre)
import Unsafe.Coerce (unsafeCoerce)

genre :: Genre
genre = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "الکترونیک"
  , "بلوز"
  , "جاز"
  , "جهانی"
  , "راک"
  , "رپ"
  , "رگه"
  , "سول"
  , "غیرموسیقی"
  , "فانک"
  , "لاتین"
  , "متال"
  , "محلی"
  , "هیپ هاپ"
  , "پاپ"
  , "کانتری"
  , "کلاسیک"
  ]
