module Fakerjs2.Locales.FrCh.Person.JobType (job_type) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

job_type = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Superviseur"
  , "Executif"
  , "Manager"
  , "Ingenieur"
  , "Specialiste"
  , "Directeur"
  , "Coordinateur"
  , "Administrateur"
  , "Architecte"
  , "Analyste"
  , "Designer"
  , "Technicien"
  , "Developpeur"
  , "Producteur"
  , "Consultant"
  , "Assistant"
  , "Agent"
  , "Stagiaire"
  ]
