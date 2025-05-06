module Fakerjs2.Locales.NbNo.Color.Human (human) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

human = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "beige"
  , "blå"
  , "grå"
  , "grønn"
  , "gul"
  , "hvit"
  , "indigo"
  , "karmin"
  , "lilla"
  , "limegrønn"
  , "magenta"
  , "oransje"
  , "rosa"
  , "rød"
  , "smaragdgrønn"
  , "svart"
  , "turkis"
  ]
