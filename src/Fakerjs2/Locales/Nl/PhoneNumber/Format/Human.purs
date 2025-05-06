module Fakerjs2.Locales.Nl.PhoneNumber.Format.Human (human) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

human = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "(0###) ######", "06 #### ####", "0#########", "06########", "+31#########", "+316########" ]
