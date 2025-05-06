module Fakerjs2.Locales.Az.Commerce.ProductName (adjective, material, product) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

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

material = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Ağac", "Beton", "Pambıq", "Plastik", "Polad", "Qranit", "Rezin" ]

product = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Avtomobil", "Beret", "Kompyuter", "Kulon", "Kəmər", "Stol", "Stul", "Sviter" ]
