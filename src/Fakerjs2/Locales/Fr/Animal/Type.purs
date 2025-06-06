module Fakerjs2.Locales.Fr.Animal.Type (type_) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

type_ = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "chat"
  , "cheval"
  , "chien"
  , "crocodilien"
  , "cétacé"
  , "insecte"
  , "lapin"
  , "lion"
  , "oiseau"
  , "ours"
  , "poisson"
  , "serpent"
  , "vache"
  ]
