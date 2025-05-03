module Fakerjs2.Locales.CsCz.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (State)
import Unsafe.Coerce (unsafeCoerce)

state :: State
state = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Jihočeský kraj"
  , "Jihomoravský kraj"
  , "Karlovarský kraj"
  , "Kraj Vysočina"
  , "Královéhradecký kraj"
  , "Liberecký kraj"
  , "Moravskoslezský kraj"
  , "Olomoucký kraj"
  , "Pardubický kraj"
  , "Plzeňský kraj"
  , "Praha"
  , "Středočeský kraj"
  , "Ústecký kraj"
  , "Zlínský kraj"
  ]
