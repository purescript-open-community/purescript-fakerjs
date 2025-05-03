module Fakerjs2.Locales.PtBr.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (State)
import Unsafe.Coerce (unsafeCoerce)

state :: State
state = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Acre"
  , "Alagoas"
  , "Amapá"
  , "Amazonas"
  , "Bahia"
  , "Ceará"
  , "Distrito Federal"
  , "Espírito Santo"
  , "Goiás"
  , "Maranhão"
  , "Mato Grosso"
  , "Mato Grosso do Sul"
  , "Minas Gerais"
  , "Pará"
  , "Paraíba"
  , "Paraná"
  , "Pernambuco"
  , "Piauí"
  , "Rio de Janeiro"
  , "Rio Grande do Norte"
  , "Rio Grande do Sul"
  , "Rondônia"
  , "Roraima"
  , "Santa Catarina"
  , "São Paulo"
  , "Sergipe"
  , "Tocantins"
  ]
