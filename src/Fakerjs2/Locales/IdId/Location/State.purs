module Fakerjs2.Locales.IdId.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (State)
import Unsafe.Coerce (unsafeCoerce)

state :: State
state = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Aceh"
  , "Sumatera Utara"
  , "Sumatera Barat"
  , "Jambi"
  , "Bangka Belitung"
  , "Riau"
  , "Kepulauan Riau"
  , "Bengkulu"
  , "Sumatera Selatan"
  , "Lampung"
  , "Banten"
  , "DKI Jakarta"
  , "Jawa Barat"
  , "Jawa Tengah"
  , "Jawa Timur"
  , "Nusa Tenggara Timur"
  , "DI Yogyakarta"
  , "Bali"
  , "Nusa Tenggara Barat"
  , "Kalimantan Barat"
  , "Kalimantan Tengah"
  , "Kalimantan Selatan"
  , "Kalimantan Timur"
  , "Kalimantan Utara"
  , "Sulawesi Selatan"
  , "Sulawesi Utara"
  , "Gorontalo"
  , "Sulawesi Tengah"
  , "Sulawesi Barat"
  , "Sulawesi Tenggara"
  , "Maluku"
  , "Maluku Utara"
  , "Papua Barat"
  , "Papua"
  , "Papua Tengah"
  , "Papua Pegunungan"
  , "Papua Selatan"
  ]
