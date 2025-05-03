module Fakerjs2.Locales.EsMx.Commerce.Department (department) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Department)
import Unsafe.Coerce (unsafeCoerce)

department :: Department
department = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Aire libre"
  , "Automoción"
  , "Baby"
  , "Belleza"
  , "Deportes"
  , "Electrónica"
  , "Herramientas"
  , "Hogar"
  , "Industrial"
  , "Jardín"
  , "Joyería"
  , "Juegos"
  , "Juguetes"
  , "Kids"
  , "Libros"
  , "Música"
  , "Ordenadores"
  , "Películas"
  , "Ropa"
  , "Salud"
  , "Ultramarinos"
  , "Zapatos"
  ]
