module Fakerjs2.Locales.Sv.Color.Human (human) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Human)
import Unsafe.Coerce (unsafeCoerce)

human :: Human
human = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "blå"
  , "brun"
  , "grå"
  , "grön"
  , "gul"
  , "guld"
  , "indigo"
  , "korall"
  , "lila"
  , "purpur"
  , "rosa"
  , "röd"
  , "silver"
  , "svart"
  , "vit"
  ]
