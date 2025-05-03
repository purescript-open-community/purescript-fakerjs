module Fakerjs2.Locales.PtBr.Commerce.ProductName (adjective, material, product) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (ProductNameAdjective, ProductNameMaterial, ProductNameProduct)
import Unsafe.Coerce (unsafeCoerce)

adjective :: ProductNameAdjective
adjective = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Ergonômico"
  , "Fantástico"
  , "Feito à mão"
  , "Genérico"
  , "Gostoso"
  , "Impressionante"
  , "Incrível"
  , "Inteligente"
  , "Licenciado"
  , "Lindo"
  , "Lustroso"
  , "Pequeno"
  , "Prático"
  , "Refinado"
  , "Rústico"
  , "Sem marca"
  ]

material :: ProductNameMaterial
material = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Algodão"
  , "Aço"
  , "Borracha"
  , "Concreto"
  , "Congelado"
  , "Fresco"
  , "Granito"
  , "Macio"
  , "Madeira"
  , "Metal"
  , "Plástico"
  ]

product :: ProductNameProduct
product = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Atum"
  , "Bacon"
  , "Bicicleta"
  , "Bola"
  , "Cadeira"
  , "Calças"
  , "Camiseta"
  , "Carro"
  , "Chapéu"
  , "Computador"
  , "Frango"
  , "Luvas"
  , "Mesa"
  , "Mouse"
  , "Peixe"
  , "Pizza"
  , "Queijo"
  , "Sabonete"
  , "Salada"
  , "Salgadinhos"
  , "Salsicha"
  , "Sapatos"
  , "Teclado"
  , "Toalhas"
  ]
