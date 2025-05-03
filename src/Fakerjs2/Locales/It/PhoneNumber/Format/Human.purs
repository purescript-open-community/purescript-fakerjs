module Fakerjs2.Locales.It.PhoneNumber.Format.Human (human) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Human)
import Unsafe.Coerce (unsafeCoerce)

human :: Human
human = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "+## ### ## ## ####"
  , "+## ## #######"
  , "+## ## ########"
  , "+## ### #######"
  , "+## ### ########"
  , "+## #### #######"
  , "+## #### ########"
  , "0## ### ####"
  , "+39 0## ### ###"
  , "3## ### ###"
  , "+39 3## ### ###"
  ]
