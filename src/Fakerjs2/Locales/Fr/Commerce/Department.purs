module Fakerjs2.Locales.Fr.Commerce.Department (department) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Department)
import Unsafe.Coerce (unsafeCoerce)

department :: Department
department = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Automobile"
  , "Beauté"
  , "Bijoux"
  , "Bébé"
  , "Chaussures"
  , "Electronique"
  , "Enfants"
  , "Films"
  , "Industrie"
  , "Jardin"
  , "Jeux"
  , "Jouets"
  , "Livres"
  , "Maison"
  , "Musique"
  , "Ordinateurs"
  , "Outils"
  , "Plein air"
  , "Santé"
  , "Sports"
  , "Vêtements"
  , "Épicerie"
  ]
