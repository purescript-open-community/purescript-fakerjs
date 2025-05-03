module Fakerjs2.Locales.Hy.Color.Human (human) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Human)
import Unsafe.Coerce (unsafeCoerce)

human :: Human
human = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "դեղին"
  , "երկնագույն"
  , "կանաչ"
  , "կապույտ"
  , "կարմիր"
  , "մանուշակագույն"
  , "մոխրագույն"
  , "նարնջագույն"
  , "ոսկեգույն"
  , "սպիտակ"
  , "սև"
  , "վարդագույն"
  ]
