module Fakerjs2.Locales.He.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Unsafe.Coerce (unsafeCoerce)

state = (unsafeCoerce :: Array String -> NonEmptyArray String)
  [ "חיפה", "תל אביב", "הגדה המערבית", "צפון", "דרום", "ירושלים", "מרכז" ]
