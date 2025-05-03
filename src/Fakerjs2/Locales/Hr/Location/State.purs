module Fakerjs2.Locales.Hr.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (State)
import Unsafe.Coerce (unsafeCoerce)

state :: State
state = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Bjelovarsko-bilogorska"
  , "Brodsko-posavska"
  , "Dubrovačko-neretvanska"
  , "Grad Zagreb"
  , "Istarska"
  , "Karlovačka"
  , "Koprivničko-križevačka"
  , "Krapinsko-zagorska"
  , "Ličko-senjska"
  , "Međimurska"
  , "Osječko-baranjska"
  , "Požeško-slavonska"
  , "Primorsko-goranska"
  , "Sisačko-moslavačka"
  , "Splitsko-dalmatinska"
  , "Šibensko-kninska"
  , "Varaždinska"
  , "Virovitičko-podravska"
  , "Vukovarsko-srijemska"
  , "Zadarska"
  , "Zagrebačka"
  ]
