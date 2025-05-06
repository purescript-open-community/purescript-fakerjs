module Fakerjs2.Locales.Hr.Person.JobArea (job_area) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

job_area = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "programski"
  , "brand"
  , "sigurnosni"
  , "marketing"
  , "implementacijski"
  , "integracijski"
  , "funkcionalni"
  , "tržišni"
  , "grupni"
  , "aplikacijski"
  , "optimizacijski"
  , "operativni"
  , "infrastrukturni"
  , "komercijalni"
  , "prodajni"
  , "web"
  , "financijski"
  , "podatkovni"
  , "logistički"
  , "kreativni"
  , "računovodstveni"
  ]
