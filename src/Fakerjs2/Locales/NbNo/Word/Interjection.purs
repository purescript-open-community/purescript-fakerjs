module Fakerjs2.Locales.NbNo.Word.Interjection (interjection) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Interjection)
import Unsafe.Coerce (unsafeCoerce)

interjection :: Interjection
interjection = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "aha"
  , "au"
  , "bravo"
  , "bø"
  , "fy"
  , "fysj"
  , "huff"
  , "hurra"
  , "hæ"
  , "jippi"
  , "nam"
  , "oi"
  , "ops"
  , "pytt"
  , "pøh"
  , "å"
  , "æsj"
  ]
