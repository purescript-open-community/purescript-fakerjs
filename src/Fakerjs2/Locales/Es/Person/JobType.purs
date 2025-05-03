module Fakerjs2.Locales.Es.Person.JobType (job_type) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (JobType)
import Unsafe.Coerce (unsafeCoerce)

job_type :: JobType
job_type = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Supervisor"
  , "Asociado"
  , "Ejecutivo"
  , "Relacciones"
  , "Oficial"
  , "Gerente"
  , "Ingeniero"
  , "Especialista"
  , "Director"
  , "Coordinador"
  , "Administrador"
  , "Arquitecto"
  , "Analista"
  , "Diseñador"
  , "Planificador"
  , "Técnico"
  , "Funcionario"
  , "Desarrollador"
  , "Productor"
  , "Consultor"
  , "Asistente"
  , "Facilitador"
  , "Agente"
  , "Representante"
  , "Estratega"
  ]
