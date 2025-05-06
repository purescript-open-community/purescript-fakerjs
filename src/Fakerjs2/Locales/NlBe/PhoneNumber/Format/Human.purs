module Fakerjs2.Locales.NlBe.PhoneNumber.Format.Human (human) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

human = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "###/######"
  , "###/## ## ##"
  , "### ## ## ##"
  , "###/### ###"
  , "##########"
  , "04##/### ###"
  , "04## ## ## ##"
  , "00324 ## ## ##"
  , "+324 ## ## ## ##"
  ]
