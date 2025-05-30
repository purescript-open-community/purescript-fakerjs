module Fakerjs2.Locales.Es.Commerce.ProductName (adjective, material, product) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

adjective = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Artesanal"
  , "Ergonómico"
  , "Fantástico"
  , "Genérico"
  , "Guapa"
  , "Guapo"
  , "Hecho a mano"
  , "Increible"
  , "Inteligente"
  , "Pequeño"
  , "Práctico"
  , "Refinado"
  , "Rústico"
  , "Sabroso"
  , "Sorprendente"
  ]

material = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Acero", "Algodón", "Granito", "Hormigon", "Ladrillo", "Madera", "Metal", "Plástico" ]

product = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Atún"
  , "Bacon"
  , "Bicicleta"
  , "Camiseta"
  , "Coche"
  , "Ensalada"
  , "Gorro"
  , "Guantes"
  , "Mesa"
  , "Ordenador"
  , "Pantalones"
  , "Patatas fritas"
  , "Pelota"
  , "Pescado"
  , "Pizza"
  , "Pollo"
  , "Queso"
  , "Raton"
  , "Salchichas"
  , "Silla"
  , "Sopa"
  , "Teclado"
  , "Toallas"
  , "Zapatos"
  ]
