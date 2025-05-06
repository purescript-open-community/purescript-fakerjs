module Fakerjs2.Locales.Es.Location.StateAbbr (state_abbr) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

state_abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "And"
  , "Ara"
  , "Ast"
  , "Bal"
  , "Can"
  , "Cbr"
  , "Man"
  , "Leo"
  , "Cat"
  , "Com"
  , "Ext"
  , "Gal"
  , "Rio"
  , "Mad"
  , "Nav"
  , "Vas"
  , "Mur"
  ]
