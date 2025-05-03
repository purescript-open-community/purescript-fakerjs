module Fakerjs2.Locales.Lv.Person.JobArea (job_area) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (JobArea)
import Unsafe.Coerce (unsafeCoerce)

job_area :: JobArea
job_area = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "risinājumu"
  , "programmu"
  , "drošības"
  , "izpētes"
  , "mārketinga"
  , "vadības"
  , "izveides"
  , "integrāciju"
  , "funkcionalitātes"
  , "taktikas"
  , "identitātes"
  , "tirgus"
  , "grupas"
  , "nodaļas"
  , "pielietojumu"
  , "optimizācijas"
  , "operāciju"
  , "infrastruktūras"
  , "intraneta"
  , "sakaru"
  , "kvalitātes"
  , "mobilitātes"
  , "kontu"
  , "datu"
  , "kreatīvais"
  , "konfigurācijas"
  , "grāmatojumu"
  , "sadarbības"
  , "lietojamības"
  , "mērījumu"
  ]
