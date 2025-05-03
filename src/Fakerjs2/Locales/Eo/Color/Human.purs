module Fakerjs2.Locales.Eo.Color.Human (human) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Human)
import Unsafe.Coerce (unsafeCoerce)

human :: Human
human = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "arĝenta"
  , "blanka"
  , "blua"
  , "bruna"
  , "cejana"
  , "ebura"
  , "flava"
  , "griza"
  , "indiga"
  , "kakia"
  , "lavenda"
  , "lazura"
  , "malva"
  , "maĝenta"
  , "nigra"
  , "okra"
  , "ora"
  , "oranĝa"
  , "purpura"
  , "roza"
  , "ruĝa"
  , "sukcena"
  , "turkisa"
  , "verda"
  , "viola"
  ]
