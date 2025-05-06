module Fakerjs2.Locales.FrBe.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Unsafe.Coerce (unsafeCoerce)

state = (unsafeCoerce :: Array String -> NonEmptyArray String)
  [ "Anvers"
  , "Limbourg"
  , "Flandre occidentale"
  , "Flandre orientale"
  , "Hainaut"
  , "Liège"
  , "Luxembourg"
  , "Namur"
  , "Brabant flamand"
  , "Brabant wallon"
  ]
