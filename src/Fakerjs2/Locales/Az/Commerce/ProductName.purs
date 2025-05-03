module Fakerjs2.Locales.Az.Commerce.ProductName (adjective, material, product) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (ProductNameAdjective, ProductNameMaterial, ProductNameProduct)
import Unsafe.Coerce (unsafeCoerce)

adjective :: ProductNameAdjective
adjective = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Balaca"
  , "Ergonomik"
  , "Fantastik"
  , "Kobud"
  , "Möhtəşəm"
  , "Mükəmməl"
  , "Parlaq"
  , "İnanılmaz"
  , "İntellektual"
  , "Əlverişli"
  ]

material :: ProductNameMaterial
material = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Ağac", "Beton", "Pambıq", "Plastik", "Polad", "Qranit", "Rezin" ]

product :: ProductNameProduct
product = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Avtomobil", "Beret", "Kompyuter", "Kulon", "Kəmər", "Stol", "Stul", "Sviter" ]
