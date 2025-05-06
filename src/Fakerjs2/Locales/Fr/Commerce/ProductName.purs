module Fakerjs2.Locales.Fr.Commerce.ProductName (adjective, material, product) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

adjective = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Artisanal"
  , "Ergonomique"
  , "Fait main"
  , "Fantastique"
  , "Génial"
  , "Générique"
  , "Incroyable"
  , "Intelligent"
  , "Licencié"
  , "Luxueux"
  , "Magnifique"
  , "Moderne"
  , "Oriental"
  , "Petit"
  , "Pratique"
  , "Raffiné"
  , "Recyclé"
  , "Rustique"
  , "Sans marque"
  , "Savoureux"
  , "Sur mesure"
  , "Électronique"
  , "Élégant"
  ]

material = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Acier"
  , "Bois"
  , "Bronze"
  , "Béton"
  , "Caoutchouc"
  , "Congelé"
  , "Coton"
  , "Doux"
  , "Frais"
  , "Granit"
  , "Métal"
  , "Plastique"
  ]

product = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Boule"
  , "Chaise"
  , "Chapeau"
  , "Chaussures"
  , "Chemise"
  , "Clavier"
  , "Frites"
  , "Fromage"
  , "Gants"
  , "Lard"
  , "Ordinateur"
  , "Pantalon"
  , "Pizza"
  , "Poisson"
  , "Poulet"
  , "Salade"
  , "Saucisses"
  , "Savon"
  , "Serviettes"
  , "Souris"
  , "Table"
  , "Thon"
  , "Voiture"
  , "Vélo"
  ]
