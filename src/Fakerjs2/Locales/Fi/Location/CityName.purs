module Fakerjs2.Locales.Fi.Location.CityName (city_name) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (CityName)
import Unsafe.Coerce (unsafeCoerce)

city_name :: CityName
city_name = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Espoo"
  , "Helsinki"
  , "Hyvinkää"
  , "Iisalmi"
  , "Joensuu"
  , "Jyväskylä"
  , "Kokkola"
  , "Kuopio"
  , "Lahti"
  , "Oulu"
  , "Pori"
  , "Porvoo"
  , "Raisio"
  , "Rovaniemi"
  , "Sastamala"
  , "Tampere"
  , "Turku"
  , "Vaasa"
  , "Valkeakoski"
  , "Vantaa"
  ]
