module Fakerjs2.Locales.Fa.Word.Conjunction (conjunction) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

conjunction = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "و"
  , "یا"
  , "اما"
  , "بلکه"
  , "لیکن"
  , "زیرا"
  , "چون"
  , "هر چند"
  , "تا"
  , "همچنین"
  , "بنابراین"
  , "اگرچه"
  , "همچون"
  ]
