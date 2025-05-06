module Fakerjs2.Locales.Lv.Commerce.ProductName (adjective, material, product) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

adjective = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Ciets"
  , "Ergonomisks"
  , "Fantastisks"
  , "Lielisks"
  , "Mazs"
  , "Mīksts"
  , "Neticams"
  , "Praktisks"
  , "Raupjš"
  , "Rūgts"
  , "Spalvains"
  , "Vieds"
  ]

material = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "betona", "dzelzs", "granīta", "gumijas", "koka", "kokvilnas", "plastmasas" ]

product = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "auto"
  , "ceļarullis"
  , "dators"
  , "džemperis"
  , "galds"
  , "gredzens"
  , "kažoks"
  , "krēsls"
  , "monitors"
  , "nazis"
  , "plakāts"
  , "plāksteris"
  , "pončiks"
  , "radio"
  , "ritenis"
  , "siksna"
  , "skapis"
  , "skaļrunis"
  , "telefons"
  , "televizors"
  , "zābaks"
  ]
