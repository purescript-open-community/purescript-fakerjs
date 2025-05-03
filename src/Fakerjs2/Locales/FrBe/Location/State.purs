module Fakerjs2.Locales.FrBe.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (State)
import Unsafe.Coerce (unsafeCoerce)

state :: State
state = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
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
