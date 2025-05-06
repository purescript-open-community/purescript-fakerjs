module Fakerjs2.Locales.Es.Person.JobDescriptor (job_descriptor) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

job_descriptor = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Jefe"
  , "Senior"
  , "Directo"
  , "Corporativo"
  , "Dinánmico"
  , "Futuro"
  , "Producto"
  , "Nacional"
  , "Regional"
  , "Distrito"
  , "Central"
  , "Global"
  , "Cliente"
  , "Inversor"
  , "International"
  , "Heredado"
  , "Adelante"
  , "Interno"
  , "Humano"
  , "Gerente"
  , "Director"
  ]
