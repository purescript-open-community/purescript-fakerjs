module Fakerjs2.Locales.Lv.Commerce.ProductName (adjective, material, product) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (ProductNameAdjective, ProductNameMaterial, ProductNameProduct)
import Unsafe.Coerce (unsafeCoerce)

adjective :: ProductNameAdjective
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

material :: ProductNameMaterial
material = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "betona", "dzelzs", "granīta", "gumijas", "koka", "kokvilnas", "plastmasas" ]

product :: ProductNameProduct
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
