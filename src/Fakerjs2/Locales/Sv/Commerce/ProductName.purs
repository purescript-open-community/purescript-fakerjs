module Fakerjs2.Locales.Sv.Commerce.ProductName (adjective, material, product) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

adjective = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Ergonomisk"
  , "Fantastisk"
  , "Grym"
  , "Intelligent"
  , "Liten"
  , "Otrolig"
  , "Praktisk"
  , "Robust"
  , "Slimmad"
  , "Söt"
  ]

material = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Betong", "Bomull", "Granit", "Gummi", "Latex", "Metall", "Plast", "Stål", "Trä" ]

product = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Bil", "Bord", "Byxor", "Dator", "Handskar", "Hatt", "Skjorta", "Skor", "Stol" ]
