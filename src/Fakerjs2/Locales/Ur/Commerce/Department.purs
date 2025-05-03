module Fakerjs2.Locales.Ur.Commerce.Department (department) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Department)
import Unsafe.Coerce (unsafeCoerce)

department :: Department
department = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "اشیاء"
  , "اوزار"
  , "باغ"
  , "بجلی"
  , "بچے"
  , "جوتے"
  , "خوبصورتی"
  , "صحر"
  , "فلم"
  , "کارغانے"
  , "کتابیہ"
  , "کمپیوٹر"
  , "کپڑے"
  , "کھلونہ"
  , "کھیل"
  , "گانی"
  , "گاڑیاں"
  , "گھر"
  ]
