module Fakerjs2.Locales.He.Music.Genre (genre) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

genre = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "אלקטרוני"
  , "בלוז"
  , "במה ומסך"
  , "ג'אז"
  , "האוס"
  , "היפ הופ"
  , "טראנס"
  , "לא מוסיקה"
  , "לטינית"
  , "מוזיקת עולם"
  , "מוזיקת עם"
  , "נשמה"
  , "פאנק"
  , "פופ"
  , "קאנטרי"
  , "קלאסית"
  , "ראפ"
  , "רגאיי"
  , "רוק"
  , "רוק מטאלי"
  ]
