module Fakerjs2.Locales.En.Person.JobType (job_type) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

job_type = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Supervisor"
  , "Associate"
  , "Executive"
  , "Liaison"
  , "Officer"
  , "Manager"
  , "Engineer"
  , "Specialist"
  , "Director"
  , "Coordinator"
  , "Administrator"
  , "Architect"
  , "Analyst"
  , "Designer"
  , "Planner"
  , "Orchestrator"
  , "Technician"
  , "Developer"
  , "Producer"
  , "Consultant"
  , "Assistant"
  , "Facilitator"
  , "Agent"
  , "Representative"
  , "Strategist"
  ]
