module Fakerjs2.Locales.He.Color.Human (human) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Human)
import Unsafe.Coerce (unsafeCoerce)

human :: Human
human = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "אדום"
  , "אינדיגו"
  , "אפור"
  , "ארד"
  , "בורדו"
  , "בז"
  , "ברונזה"
  , "ורוד"
  , "ורוד פוקסיה"
  , "זהב"
  , "זית"
  , "חאקי"
  , "חום ערמוני"
  , "טורקיז"
  , "ירוק"
  , "ירוק כחלחל"
  , "ירוק מנטה"
  , "כחול"
  , "כסף"
  , "כתום"
  , "לבן"
  , "לבנדר"
  , "ליים"
  , "מגנטה"
  , "סגול"
  , "סחלב"
  , "סלמון"
  , "ערמון"
  , "צבע תכלת"
  , "צהוב"
  , "שזוף"
  , "שזיף"
  , "שחור"
  , "שמים כחולים"
  , "שנהב"
  ]
