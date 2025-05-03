module Fakerjs2.Locales.Da.Word.Interjection (interjection) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Interjection)
import Unsafe.Coerce (unsafeCoerce)

interjection :: Interjection
interjection = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "ah"
  , "av"
  , "haha"
  , "hallo"
  , "hej"
  , "hov"
  , "hurra"
  , "ih"
  , "ja"
  , "nej"
  , "oh"
  , "pyha"
  , "tja"
  , "uf"
  , "uh"
  , "wow"
  , "æv"
  , "øv"
  ]
