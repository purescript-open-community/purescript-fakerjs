module Fakerjs2.Locales.Fi.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (State)
import Unsafe.Coerce (unsafeCoerce)

state :: State
state = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Ahvenanmaa"
  , "Etelä-Karjala"
  , "Etelä-Pohjanmaa"
  , "Etelä-Savo"
  , "Kainuu"
  , "Kanta-Häme"
  , "Keski-Pohjanmaa"
  , "Keski-Suomi"
  , "Kymenlaakso"
  , "Lappi"
  , "Päijät-Häme"
  , "Pirkanmaa"
  , "Pohjanmaa"
  , "Pohjois-Karjala"
  , "Pohjois-Pohjanmaa"
  , "Pohjois-Savo"
  , "Satakunta"
  , "Uusimaa"
  , "Varsinais-Suomi"
  ]
