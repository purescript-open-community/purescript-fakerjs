module Fakerjs2.Locales.Eo.Animal.Type (type_) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

type_ = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "birdo"
  , "bovo"
  , "cetaco"
  , "fiŝo"
  , "hundo"
  , "insekto"
  , "kato"
  , "krokodilulo"
  , "kuniklo"
  , "leono"
  , "serpento"
  , "urso"
  , "ĉevalo"
  ]
