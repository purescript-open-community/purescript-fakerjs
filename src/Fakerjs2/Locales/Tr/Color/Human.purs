module Fakerjs2.Locales.Tr.Color.Human (human) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Human)
import Unsafe.Coerce (unsafeCoerce)

human :: Human
human = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "altın"
  , "beyaz"
  , "bordo"
  , "camgöbeği"
  , "eflatun"
  , "erik"
  , "fildişi"
  , "fuşya"
  , "gri"
  , "gökyüzü mavisi"
  , "gümüş"
  , "indigo"
  , "kırmızı"
  , "lavanta"
  , "masmavi"
  , "mavi"
  , "menekşe"
  , "misket limonu"
  , "mor"
  , "nane yeşili"
  , "orkide"
  , "pembe"
  , "sarı"
  , "siyah"
  , "somon"
  , "tan"
  , "turkuaz"
  , "turuncu"
  , "yeşil"
  , "zeytin"
  ]
