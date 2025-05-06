module Fakerjs2.Locales.PtBr.Person.JobType (job_type) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

job_type = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Supervisor"
  , "Associado"
  , "Executivo"
  , "Atentende"
  , "Policial"
  , "Gerente"
  , "Engenheiro"
  , "Especialista"
  , "Diretor"
  , "Coordenador"
  , "Administrador"
  , "Arquiteto"
  , "Analista"
  , "Designer"
  , "Planejador"
  , "Orquestrador"
  , "Técnico"
  , "Desenvolvedor"
  , "Produtor"
  , "Consultor"
  , "Assistente"
  , "Facilitador"
  , "Agente"
  , "Representante"
  , "Estrategista"
  ]
