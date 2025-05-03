module Fakerjs2.Locales.El.Color.Human (human) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Human)
import Unsafe.Coerce (unsafeCoerce)

human :: Human
human = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "ασημί"
  , "βιολετί"
  , "γκρί"
  , "κίτρινο"
  , "κοκκικο"
  , "κυανό"
  , "λαδί"
  , "λευκό"
  , "μαύρο"
  , "μπλε"
  , "μωβ"
  , "πορτοκαλί"
  , "πράσινο"
  , "ροζ"
  , "τρικουάζ"
  , "φουξια"
  , "χρυσό"
  ]
