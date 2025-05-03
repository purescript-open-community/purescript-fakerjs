module Fakerjs2.Locales.Hu.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (State)
import Unsafe.Coerce (unsafeCoerce)

state :: State
state = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Bács-Kiskun"
  , "Baranya"
  , "Békés"
  , "Borsod-Abaúj-Zemplén"
  , "Budapest"
  , "Csongrád-Csanád"
  , "Fejér"
  , "Győr-Moson-Sopron"
  , "Hajdú-Bihar"
  , "Heves"
  , "Jász-Nagykun-Szolnok"
  , "Komárom-Esztergom"
  , "Nógrád"
  , "Pest"
  , "Somogy"
  , "Szabolcs-Szatmár-Bereg"
  , "Tolna"
  , "Vas"
  , "Veszprém"
  , "Zala"
  ]
