module Fakerjs2.Locales.Ur.Music.Genre (genre) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Genre)
import Unsafe.Coerce (unsafeCoerce)

genre :: Genre
genre = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "جاز", "دنیای\x000670", "ریپ", "فلک", "فنک", "لاطینی", "پاپ", "پرانی", "کلاسکی" ]
