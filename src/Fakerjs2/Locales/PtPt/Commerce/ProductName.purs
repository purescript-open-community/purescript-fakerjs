module Fakerjs2.Locales.PtPt.Commerce.ProductName (adjective, material, product) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

adjective = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Artesanal"
  , "Ergonómico"
  , "Fantástico"
  , "Feito à Mão"
  , "Genérico"
  , "Impressionante"
  , "Incrível"
  , "Inteligente"
  , "Licenciado"
  , "Linda"
  , "Lustroso"
  , "Pequeno"
  , "Prático"
  , "Refinado"
  , "Rústico"
  , "Saboroso"
  , "Sem Marca"
  ]

material = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Algodão"
  , "Aço"
  , "Betão"
  , "Borracha"
  , "Congelado"
  , "Fresco"
  , "Granito"
  , "Madeira"
  , "Metal"
  , "Plástico"
  , "Suave"
  ]

product = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Atum"
  , "Bacon"
  , "Batatas Fritas"
  , "Bicicleta"
  , "Bola"
  , "Cadeira"
  , "Calças"
  , "Camisa"
  , "Carro"
  , "Chapéu"
  , "Computador"
  , "Frango"
  , "Luvas"
  , "Mesa"
  , "Peixe"
  , "Pizza"
  , "Queijo"
  , "Rato"
  , "Sabonete"
  , "Salada"
  , "Salsichas"
  , "Sapatos"
  , "Teclado"
  , "Toalhas"
  ]
