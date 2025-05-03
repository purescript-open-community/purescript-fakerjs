module Fakerjs2.Locales.Lv.Color.Human (human) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Human)
import Unsafe.Coerce (unsafeCoerce)

human :: Human
human = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "balta"
  , "debess-zila"
  , "dzeltena"
  , "gaišzila"
  , "krēma"
  , "lillā"
  , "melna"
  , "olīv"
  , "oranža"
  , "pelēka"
  , "purpura"
  , "rozā"
  , "ruda"
  , "sarkan-brūna"
  , "sarkana"
  , "sudrabaina"
  , "violeta"
  , "zaļa"
  , "zaļgan-zila"
  , "zelta"
  , "zeltaina"
  , "zila"
  , "красно-пурпурный"
  ]
