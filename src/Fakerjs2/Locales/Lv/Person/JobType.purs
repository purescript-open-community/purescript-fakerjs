module Fakerjs2.Locales.Lv.Person.JobType (job_type) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (JobType)
import Unsafe.Coerce (unsafeCoerce)

job_type :: JobType
job_type = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "uzraugs"
  , "vadītājs"
  , "pārstāvis"
  , "oficieris"
  , "menedžers"
  , "inženieris"
  , "speciālists"
  , "direktors"
  , "koordinators"
  , "administrators"
  , "arhitekts"
  , "analītiķis"
  , "dizainers"
  , "plānotājs"
  , "pārraugs"
  , "tehniķis"
  , "izstrādātājs"
  , "producents"
  , "konsultants"
  , "asistents"
  , "aģents"
  , "stratēģis"
  ]
