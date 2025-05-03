module Fakerjs2.Locales.Hu.Word.Interjection (interjection) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Interjection)
import Unsafe.Coerce (unsafeCoerce)

interjection :: Interjection
interjection = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "a"
  , "á"
  , "abcúg"
  , "ah"
  , "aha"
  , "ahá"
  , "ajjaj"
  , "állj"
  , "bárcsak"
  , "brr"
  , "csacsacsa"
  , "ejha"
  , "fi"
  , "haha"
  , "hahaha"
  , "hehe"
  , "hihihi"
  , "jaj"
  , "lábhoz"
  , "ó"
  , "ohohó"
  , "ojjé"
  , "pssz"
  ]
