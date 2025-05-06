module Fakerjs2.Locales.EnHk.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Unsafe.Coerce (unsafeCoerce)

state = (unsafeCoerce :: Array String -> NonEmptyArray String)
  [ "Hong Kong Island", "Kowloon", "New Territories" ]
