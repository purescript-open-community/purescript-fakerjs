module Fakerjs2.Locales.Az.Color.Human (human) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Human)
import Unsafe.Coerce (unsafeCoerce)

human :: Human
human = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "ala"
  , "açıq bənövşəyi"
  , "ağ"
  , "boz"
  , "bənövşəyi"
  , "göy rəng"
  , "gümüşü"
  , "kardinal"
  , "mavi"
  , "narıncı"
  , "qara"
  , "qırmızı"
  , "qəhvəyi"
  , "tünd göy"
  , "tünd qırmızı"
  , "xlorofil"
  , "yaşıl"
  , "çəhrayı"
  ]
