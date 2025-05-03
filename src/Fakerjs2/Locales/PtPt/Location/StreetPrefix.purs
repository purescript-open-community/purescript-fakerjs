module Fakerjs2.Locales.PtPt.Location.StreetPrefix (street_prefix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (StreetPrefix)
import Unsafe.Coerce (unsafeCoerce)

street_prefix :: StreetPrefix
street_prefix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Acesso"
  , "Alameda"
  , "Avenida"
  , "Azinhaga"
  , "Bairro"
  , "Beco"
  , "Calçada"
  , "Caminho"
  , "Escadas"
  , "Estrada"
  , "Jardim"
  , "Ladeira"
  , "Largo"
  , "Praça"
  , "Praceta"
  , "Quinta"
  , "Rua"
  , "Travessa"
  , "Urbanização"
  , "Viela"
  ]
