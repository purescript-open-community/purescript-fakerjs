module Fakerjs2.Locales.En.Person.JobDescriptor (job_descriptor) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (JobDescriptor)
import Unsafe.Coerce (unsafeCoerce)

job_descriptor :: JobDescriptor
job_descriptor = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Lead"
  , "Senior"
  , "Direct"
  , "Corporate"
  , "Dynamic"
  , "Future"
  , "Product"
  , "National"
  , "Regional"
  , "District"
  , "Central"
  , "Global"
  , "Customer"
  , "Investor"
  , "International"
  , "Legacy"
  , "Forward"
  , "Internal"
  , "Human"
  , "Chief"
  , "Principal"
  ]
