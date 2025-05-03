module Fakerjs2.Locales.El.Person.JobType (job_type) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (JobType)
import Unsafe.Coerce (unsafeCoerce)

job_type :: JobType
job_type = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Επόπτης"
  , "Συνεργάτης"
  , "Σύμβουλος"
  , "Διευθυντής"
  , "Μηχανικός"
  , "Ειδικός"
  , "Συντονιστή"
  , "Διαχειριστής"
  , "Αναλυτής"
  , "Designer"
  , "Τεχνικός"
  , "Προγραμματιστής"
  , "Παραγωγός"
  , "Βοηθός"
  , "Συντονιστής"
  , "Εκπρόσωπος"
  , "Αντιπρόσωπος"
  ]
