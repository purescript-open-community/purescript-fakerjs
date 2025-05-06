module Fakerjs2.Locales.Hu.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Unsafe.Coerce (unsafeCoerce)

state = (unsafeCoerce :: Array String -> NonEmptyArray String)
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
