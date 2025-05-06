module Fakerjs2.Locales.Pl.Team.Prefix (prefix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

prefix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "GKS"
  , "Górnik"
  , "KS"
  , "LZS"
  , "Piast"
  , "Pogoń"
  , "Polonia"
  , "Ruch"
  , "Stal"
  , "Unia"
  , "Zjednoczenie"
  ]
