module Fakerjs2.Locales.EsMx.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (State)
import Unsafe.Coerce (unsafeCoerce)

state :: State
state = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Aguascalientes"
  , "Baja California Norte"
  , "Baja California Sur"
  , "Estado de México"
  , "Campeche"
  , "Chiapas"
  , "Chihuahua"
  , "Coahuila"
  , "Colima"
  , "Durango"
  , "Guanajuato"
  , "Guerrero"
  , "Hidalgo"
  , "Jalisco"
  , "Michoacan"
  , "Morelos"
  , "Nayarit"
  , "Nuevo León"
  , "Oaxaca"
  , "Puebla"
  , "Querétaro"
  , "Quintana Roo"
  , "San Luis Potosí"
  , "Sinaloa"
  , "Sonora"
  , "Tabasco"
  , "Tamaulipas"
  , "Tlaxcala"
  , "Veracruz"
  , "Yucatán"
  , "Zacatecas"
  ]
