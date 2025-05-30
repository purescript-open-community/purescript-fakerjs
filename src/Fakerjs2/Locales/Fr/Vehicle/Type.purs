module Fakerjs2.Locales.Fr.Vehicle.Type (type_) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

type_ = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Berlines"
  , "Berlines compactes"
  , "Citadines polyvalentes"
  , "Grands monospaces"
  , "Micro-urbaines"
  , "Mini-citadines"
  , "Minispaces"
  , "Monospaces compacts"
  , "Pick-up"
  , "SUV"
  , "Tout-terrains"
  ]
