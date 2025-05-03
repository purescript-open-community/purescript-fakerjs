module Fakerjs2.Locales.Sv.Location.CityPrefix (city_prefix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (CityPrefix)
import Unsafe.Coerce (unsafeCoerce)

city_prefix :: CityPrefix
city_prefix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Söder"
  , "Norr"
  , "Väst"
  , "Öster"
  , "Aling"
  , "Ar"
  , "Av"
  , "Bo"
  , "Br"
  , "Bå"
  , "Ek"
  , "En"
  , "Esk"
  , "Fal"
  , "Gäv"
  , "Göte"
  , "Ha"
  , "Helsing"
  , "Karl"
  , "Krist"
  , "Kram"
  , "Kung"
  , "Kö"
  , "Lyck"
  , "Ny"
  ]
