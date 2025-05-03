module Fakerjs2.Locales.Pl.Book.Publisher (publisher) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Publisher)
import Unsafe.Coerce (unsafeCoerce)

publisher :: Publisher
publisher = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Czarne"
  , "Dom Wydawniczy Rebis"
  , "Muza"
  , "PWN"
  , "W.A.B."
  , "Wydawnictwo Agora"
  , "Wydawnictwo Literackie"
  , "Wydawnictwo Świat Książki"
  , "Znak"
  , "Zysk i S-ka Wydawnictwo"
  ]
