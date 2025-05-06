module Fakerjs2.Locales.EnCa.PhoneNumber.Format.Human (human) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

human = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "!##-!##-####"
  , "(!##)!##-####"
  , "!##.!##.####"
  , "1-!##-###-####"
  , "!##-!##-#### x###"
  , "(!##)!##-#### x###"
  , "1-!##-!##-#### x###"
  , "!##.!##.#### x###"
  , "!##-!##-#### x####"
  , "(!##)!##-#### x####"
  , "1-!##-!##-#### x####"
  , "!##.!##.#### x####"
  , "!##-!##-#### x#####"
  , "(!##)!##-#### x#####"
  , "1-!##-!##-#### x#####"
  , "!##.!##.#### x#####"
  ]
