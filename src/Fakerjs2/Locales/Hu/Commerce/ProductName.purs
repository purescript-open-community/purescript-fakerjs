module Fakerjs2.Locales.Hu.Commerce.ProductName (adjective, material, product) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

adjective = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Csodás"
  , "Engedélyezett"
  , "Ergonomikus"
  , "Fantasztikus"
  , "Finom"
  , "Gyönyörű"
  , "Hihetetlen"
  , "Intelligens"
  , "Kicsi"
  , "Kifinomult"
  , "Kézműves"
  , "Kézzel készített"
  , "Márka nélküli"
  , "Praktikus"
  , "Rusztikus"
  , "Sima"
  , "Általános"
  ]

material = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Acél", "Beton", "Fa", "Fagyott", "Friss", "Fém", "Gránit", "Gumi", "Műanyag", "Pamut", "Puha" ]

product = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Asztal"
  , "Autó"
  , "Bicikli"
  , "Billentyűzet"
  , "Cipő"
  , "Csipsz"
  , "Csirke"
  , "Egér"
  , "Hal"
  , "Ing"
  , "Kalap"
  , "Kesztyű"
  , "Labda"
  , "Nadrág"
  , "Pizza"
  , "Sajt"
  , "Saláta"
  , "Szalonna"
  , "Szappan"
  , "Számítógép"
  , "Szék"
  , "Tonhal"
  , "Törölköző"
  , "Virsli"
  ]
