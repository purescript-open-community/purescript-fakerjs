module Fakerjs2.Locales.Hu.Color.Human (human) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Human)
import Unsafe.Coerce (unsafeCoerce)

human :: Human
human = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "arany"
  , "ciánkék"
  , "cserszín"
  , "csontszín"
  , "ezüst"
  , "fehér"
  , "fekete"
  , "fuksziaszín"
  , "gesztenyebarna"
  , "ibolya"
  , "indigó"
  , "kék"
  , "lazac"
  , "levendula"
  , "lila"
  , "magenta"
  , "mentazöld"
  , "narancssárga"
  , "olajzöld"
  , "orchidea"
  , "piros"
  , "rózsaszín"
  , "szilva"
  , "szürke"
  , "sárga"
  , "türkiz"
  , "zöld"
  , "zöldeskék"
  , "égszínkék"
  ]
