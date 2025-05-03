module Fakerjs2.Locales.De.PhoneNumber.Format.Human (human) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Human)
import Unsafe.Coerce (unsafeCoerce)

human :: Human
human = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "(0###) #########", "(0####) #######", "+49-###-#######", "+49-####-########" ]
