module Fakerjs2.Locales.Hu.Commerce.Department (department) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

department = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Autó"
  , "Baba"
  , "Cipő"
  , "Egészség"
  , "Elektronika"
  , "Film"
  , "Gyermek"
  , "Ipari"
  , "Játék"
  , "Játékszer"
  , "Kert"
  , "Könyv"
  , "Otthon"
  , "Ruházat"
  , "Sport"
  , "Szabadban"
  , "Szerszám"
  , "Számítógép"
  , "Szépség"
  , "Zene"
  , "Ékszer"
  , "Élelmiszer"
  ]
