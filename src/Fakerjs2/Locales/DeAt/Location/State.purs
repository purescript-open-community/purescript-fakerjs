module Fakerjs2.Locales.DeAt.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Unsafe.Coerce (unsafeCoerce)

state = (unsafeCoerce :: Array String -> NonEmptyArray String)
  [ "Burgenland"
  , "Kärnten"
  , "Niederösterreich"
  , "Oberösterreich"
  , "Salzburg"
  , "Steiermark"
  , "Tirol"
  , "Vorarlberg"
  , "Wien"
  ]
