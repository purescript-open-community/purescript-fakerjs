module Fakerjs2.Locales.UzUzLatin.Person.JobTitle (job_title) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (JobTitle)
import Unsafe.Coerce (unsafeCoerce)

job_title :: JobTitle
job_title = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "agent"
  , "aloqa mutaxassis"
  , "analitik"
  , "arxitektor"
  , "assistant"
  , "boshqaruvchi"
  , "consultant"
  , "coordinator"
  , "dasturchi"
  , "dizayner"
  , "direktor"
  , "hamkor"
  , "konsultant"
  , "menejer"
  , "muhandis"
  , "mutaxassis"
  , "nazoratchi"
  , "orchestrator"
  , "produktor"
  , "reja muharriri"
  , "strateg"
  , "texnik"
  , "vazir"
  , "yordamchi"
  ]
