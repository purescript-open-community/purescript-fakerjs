module Fakerjs2.Locales.Es.Commerce.Department (department) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

department = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Bebes"
  , "Bricolaje"
  , "Cine"
  , "Decoración"
  , "Deportes"
  , "Electrónica"
  , "Hogar"
  , "Informática"
  , "Joyería"
  , "Juguetería"
  , "Librería"
  , "Marroquinería"
  , "Mascotas"
  , "Moda"
  , "Música"
  , "Papelería"
  , "Parafarmacia"
  , "Salud"
  , "Videojuegos"
  ]
