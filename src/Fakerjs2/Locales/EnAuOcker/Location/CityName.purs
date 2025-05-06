module Fakerjs2.Locales.EnAuOcker.Location.CityName (city_name) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

city_name = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Bondi"
  , "Burleigh Heads"
  , "Carlton"
  , "Fitzroy"
  , "Fremantle"
  , "Glenelg"
  , "Manly"
  , "Noosa"
  , "Stones Corner"
  , "St Kilda"
  , "Surry Hills"
  , "Yarra Valley"
  ]
