module Fakerjs2.Locales.Fr.Person.JobDescriptor (job_descriptor) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

job_descriptor = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "central"
  , "client"
  , "direct"
  , "futur"
  , "humain"
  , "international"
  , "interne"
  , "mondial"
  , "national"
  , "principal"
  , "régional"
  ]
