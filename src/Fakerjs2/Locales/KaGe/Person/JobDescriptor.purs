module Fakerjs2.Locales.KaGe.Person.JobDescriptor (job_descriptor) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (JobDescriptor)
import Unsafe.Coerce (unsafeCoerce)

job_descriptor :: JobDescriptor
job_descriptor = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "გენერალური", "მთავარი", "სტაჟიორ", "უმცროსი", "ყოფილი", "წამყვანი" ]
