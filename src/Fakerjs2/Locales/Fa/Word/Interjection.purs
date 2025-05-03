module Fakerjs2.Locales.Fa.Word.Interjection (interjection) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Interjection)
import Unsafe.Coerce (unsafeCoerce)

interjection :: Interjection
interjection = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "آه"
  , "وای"
  , "اوه"
  , "اوف"
  , "ا\x00064eخ"
  , "آهان"
  , "ا\x000650ی وای"
  , "وایسا"
  , "آفرین"
  , "هورا"
  , "واو"
  , "یاالله"
  ]
