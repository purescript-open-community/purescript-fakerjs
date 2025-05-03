module Fakerjs2.Locales.En.Person.JobArea (job_area) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (JobArea)
import Unsafe.Coerce (unsafeCoerce)

job_area :: JobArea
job_area = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Solutions"
  , "Program"
  , "Brand"
  , "Security"
  , "Research"
  , "Marketing"
  , "Directives"
  , "Implementation"
  , "Integration"
  , "Functionality"
  , "Response"
  , "Paradigm"
  , "Tactics"
  , "Identity"
  , "Markets"
  , "Group"
  , "Division"
  , "Applications"
  , "Optimization"
  , "Operations"
  , "Infrastructure"
  , "Intranet"
  , "Communications"
  , "Web"
  , "Branding"
  , "Quality"
  , "Assurance"
  , "Mobility"
  , "Accounts"
  , "Data"
  , "Creative"
  , "Configuration"
  , "Accountability"
  , "Interactions"
  , "Factors"
  , "Usability"
  , "Metrics"
  ]
