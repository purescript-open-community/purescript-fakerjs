module Fakerjs2.Locales.EsMx.Location.StreetName (street_name) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (StreetName)
import Unsafe.Coerce (unsafeCoerce)

street_name :: StreetName
street_name = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "20 de Noviembre"
  , "Cinco de Mayo"
  , "Cuahutemoc"
  , "Manzanares"
  , "Donceles"
  , "Francisco I. Madero"
  , "Juárez"
  , "Repúplica de Cuba"
  , "Repúplica de Chile"
  , "Repúplica de Argentina"
  , "Repúplica de Uruguay"
  , "Isabel la Católica"
  , "Izazaga"
  , "Eje Central"
  , "Eje 6"
  , "Eje 5"
  , "La viga"
  , "Aniceto Ortega"
  , "Miguel Ángel de Quevedo"
  , "Amores"
  , "Coyoacán"
  , "Coruña"
  , "Batalla de Naco"
  , "La otra banda"
  , "Piedra del Comal"
  , "Balcón de los edecanes"
  , "Barrio la Lonja"
  , "Jicolapa"
  , "Zacatlán"
  , "Zapata"
  , "Polotitlan"
  , "Calimaya"
  , "Flor Marina"
  , "Flor Solvestre"
  , "San Miguel"
  , "Naranjo"
  , "Cedro"
  , "Jalisco"
  , "Avena"
  ]
