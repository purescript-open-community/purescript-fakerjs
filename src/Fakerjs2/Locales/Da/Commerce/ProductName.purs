module Fakerjs2.Locales.Da.Commerce.ProductName (adjective, material, product) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

adjective = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Elegant"
  , "Elektronisk"
  , "Ergonomisk"
  , "Fantastisk"
  , "Forfinet"
  , "Genbrugt"
  , "Generisk"
  , "Hjemmelavet"
  , "Håndlavet"
  , "Intelligent"
  , "Licenseret"
  , "Lille"
  , "Luksuriøs"
  , "Lækker"
  , "Moderne"
  , "Orientalsk"
  , "Praktisk"
  , "Primitiv"
  , "Skræddersyet"
  , "Slank"
  , "Smuk"
  , "Ubranded"
  , "Utrolig"
  ]

material = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Beton"
  , "Blød"
  , "Bomuld"
  , "Bronze"
  , "Fersk"
  , "Frossen"
  , "Granit"
  , "Gummi"
  , "Metal"
  , "Plastik"
  , "Stål"
  , "Træ"
  ]

product = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Bacon"
  , "Bil"
  , "Bold"
  , "Bord"
  , "Computer"
  , "Cykel"
  , "Fisk"
  , "Handske"
  , "Hat"
  , "Håndklæde"
  , "Kylling"
  , "Lysestage"
  , "Mus"
  , "Ost"
  , "Pizza"
  , "Pølse"
  , "Salat"
  , "Skjorte"
  , "Sko"
  , "Slips"
  , "Stol"
  , "Sæbe"
  , "Tastatur"
  , "Tun"
  ]
