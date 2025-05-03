module Fakerjs2.Locales.EsMx.Commerce.ProductName (adjective, material, product) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (ProductNameAdjective, ProductNameMaterial, ProductNameProduct)
import Unsafe.Coerce (unsafeCoerce)

adjective :: ProductNameAdjective
adjective = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Artesanal"
  , "Elegante"
  , "Ergonómico"
  , "Fantástico"
  , "Genérica"
  , "Gorgeous"
  , "Hecho a mano"
  , "Increíble"
  , "Inteligente"
  , "Licencia"
  , "Pequeño"
  , "Práctica"
  , "Refinado"
  , "Rústico"
  , "Sabrosa"
  , "Sin marca"
  ]

material :: ProductNameMaterial
material = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Acero"
  , "Caucho"
  , "Cotton"
  , "Fresco"
  , "Frozen"
  , "Granito"
  , "Hormigón"
  , "Madera"
  , "Metal"
  , "Plástico"
  , "Soft"
  ]

product :: ProductNameProduct
product = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Auto"
  , "Bike"
  , "Camisa"
  , "Computadora"
  , "Embutidos"
  , "Ensalada"
  , "Guantes"
  , "Jabón"
  , "Mesa"
  , "Pantalones"
  , "Pelota"
  , "Pescado"
  , "Pizza"
  , "Pollo"
  , "Presidente"
  , "Queso"
  , "Ratón"
  , "Sombrero"
  , "Teclado"
  , "Toallas"
  , "Tocino"
  , "Tuna"
  , "Zapatos"
  ]
