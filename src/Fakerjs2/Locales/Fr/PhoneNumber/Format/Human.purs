module Fakerjs2.Locales.Fr.PhoneNumber.Format.Human (human) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Human)
import Unsafe.Coerce (unsafeCoerce)

human :: Human
human = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "01########"
  , "02########"
  , "03########"
  , "04########"
  , "05########"
  , "06########"
  , "07########"
  , "+33 1########"
  , "+33 2########"
  , "+33 3########"
  , "+33 4########"
  , "+33 5########"
  , "+33 6########"
  , "+33 7########"
  ]
