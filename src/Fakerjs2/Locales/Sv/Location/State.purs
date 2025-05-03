module Fakerjs2.Locales.Sv.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (State)
import Unsafe.Coerce (unsafeCoerce)

state :: State
state = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Blekinge"
  , "Dalarna"
  , "Gotland"
  , "Gävleborg"
  , "Göteborg"
  , "Halland"
  , "Jämtland"
  , "Jönköping"
  , "Kalmar"
  , "Kronoberg"
  , "Norrbotten"
  , "Skaraborg"
  , "Skåne"
  , "Stockholm"
  , "Södermanland"
  , "Uppsala"
  , "Värmland"
  , "Västerbotten"
  , "Västernorrland"
  , "Västmanland"
  , "Älvsborg"
  , "Örebro"
  , "Östergötland"
  ]
