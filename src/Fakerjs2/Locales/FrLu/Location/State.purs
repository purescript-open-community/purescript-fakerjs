module Fakerjs2.Locales.FrLu.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Unsafe.Coerce (unsafeCoerce)

state = (unsafeCoerce :: Array String -> NonEmptyArray String)
  [ "Capellen"
  , "Clervaux"
  , "Diekirch"
  , "Echternach"
  , "Esch-sur-Alzette"
  , "Grevenmacher"
  , "Luxembourg"
  , "Mersch"
  , "Redange"
  , "Remich"
  , "Vianden"
  , "Wiltz"
  ]
