module Fakerjs2.Locales.KaGe.PhoneNumber.Format.Human (human) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Human)
import Unsafe.Coerce (unsafeCoerce)

human :: Human
human = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "5##-###-###"
  , "5########"
  , "5## ## ## ##"
  , "5## ######"
  , "5## ### ###"
  , "995 5##-###-###"
  , "995 5########"
  , "995 5## ## ## ##"
  , "995 5## ######"
  , "995 5## ### ###"
  , "+995 5##-###-###"
  , "+995 5########"
  , "+995 5## ## ## ##"
  , "+995 5## ######"
  , "+995 5## ### ###"
  , "(+995) 5##-###-###"
  , "(+995) 5########"
  , "(+995) 5## ## ## ##"
  , "(+995) 5## ######"
  , "(+995) 5## ### ###"
  ]
