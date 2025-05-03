module Fakerjs2.Locales.Ro.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (State)
import Unsafe.Coerce (unsafeCoerce)

state :: State
state = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Alba"
  , "Arad"
  , "Arges"
  , "Bacau"
  , "Bihor"
  , "Bistrita-Nasaud"
  , "Botosani"
  , "Braila"
  , "Brasov"
  , "Bucuresti"
  , "Buzau"
  , "Calarasi"
  , "Caras-Severin"
  , "Cluj"
  , "Constanta"
  , "Covasna"
  , "Dambovita"
  , "Dolj"
  , "Galati"
  , "Giurgiu"
  , "Gorj"
  , "Harghita"
  , "Hunedoara"
  , "Ialomita"
  , "Iasi"
  , "Ilfov"
  , "Maramures"
  , "Mehedinti"
  , "Mures"
  , "Neamt"
  , "Olt"
  , "Prahova"
  , "Salaj"
  , "Satu-Mare"
  , "Sibiu"
  , "Suceava"
  , "Teleorman"
  , "Timis"
  , "Tulcea"
  , "Valcea"
  , "Vaslui"
  , "Vrancea"
  ]
