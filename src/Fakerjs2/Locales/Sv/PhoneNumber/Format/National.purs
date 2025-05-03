module Fakerjs2.Locales.Sv.PhoneNumber.Format.National (national) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (National)
import Unsafe.Coerce (unsafeCoerce)

national :: National
national = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "070-### ## ##"
  , "072-### ## ##"
  , "073-### ## ##"
  , "076-### ## ##"
  , "079-### ## ##"
  , "1#####"
  , "02#-### ##"
  , "03##-### ##"
  , "04#-### ## ##"
  , "5#####"
  , "06##-## ##"
  , "08-### ## ##"
  , "09##-## ## ##"
  ]
