module Fakerjs2.Locales.EnIn.PhoneNumber.Format.Human (human) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

human = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "+919##-###-####"
  , "+919#########"
  , "+91-9##-#######"
  , "+918##-###-####"
  , "+918#########"
  , "+91-8##-#######"
  , "+917##-###-####"
  , "+917#########"
  , "+91-7##-#######"
  , "+916##-###-####"
  , "+916#########"
  , "+91-6##-#######"
  ]
