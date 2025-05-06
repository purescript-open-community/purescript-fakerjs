module Fakerjs2.Locales.EnAuOcker.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Unsafe.Coerce (unsafeCoerce)

state = (unsafeCoerce :: Array String -> NonEmptyArray String)
  [ "New South Wales"
  , "Queensland"
  , "Northern Territory"
  , "South Australia"
  , "Western Australia"
  , "Tasmania"
  , "Australian Capital Territory"
  , "Victoria"
  ]
