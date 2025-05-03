module Fakerjs2.Locales.He.PhoneNumber.Format.Human (human) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Human)
import Unsafe.Coerce (unsafeCoerce)

human :: Human
human = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "02-#######"
  , "03-#######"
  , "04-#######"
  , "08-#######"
  , "09-#######"
  , "077-#######"
  , "+972-2-#######"
  , "+972-3-#######"
  , "+972-4-#######"
  , "+972-8-#######"
  , "+972-9-#######"
  , "+972-77-#######"
  ]
