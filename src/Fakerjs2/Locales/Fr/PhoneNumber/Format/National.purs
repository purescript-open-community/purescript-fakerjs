module Fakerjs2.Locales.Fr.PhoneNumber.Format.National (national) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

national = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "01 ## ## ## ##"
  , "02 ## ## ## ##"
  , "03 ## ## ## ##"
  , "04 ## ## ## ##"
  , "05 ## ## ## ##"
  , "06 ## ## ## ##"
  , "07 ## ## ## ##"
  ]
