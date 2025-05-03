module Fakerjs2.Locales.Pl.Person.Gender (gender) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Gender)
import Unsafe.Coerce (unsafeCoerce)

gender :: Gender
gender = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Genderqueer"
  , "Hermafrodyta"
  , "Inna"
  , "Kobieta cis"
  , "Kobieta cispłciowa"
  , "Kobieta interpłciowa"
  , "Kobieta trans"
  , "Kobieta"
  , "Meżczyzna trans"
  , "Mężczyzna cis"
  , "Mężczyzna cispłciowy"
  , "Mężczyzna interpłciowy"
  , "Mężczyzna"
  , "Osoba agender"
  , "Osoba bigender"
  , "Osoba gender fluid"
  , "Osoba interpłciowa"
  , "Osoba niebinarna"
  , "Osoba pangender"
  , "Osoba polygender"
  , "Osoba trans"
  , "Transkobieta"
  , "Transsekualista"
  , "Transmężczyzna"
  ]
