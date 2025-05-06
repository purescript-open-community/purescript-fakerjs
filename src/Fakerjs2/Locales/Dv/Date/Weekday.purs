module Fakerjs2.Locales.Dv.Date.Weekday (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Maybe (Maybe(..))
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

abbr = Just
  ( (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "ހ\x0007aaކ\x0007aaރ\x0007aa"
      , "ހ\x0007aeނ\x0007a8ހ\x0007a8ރ\x0007aa"
      , "ހ\x0007afމ\x0007a6"
      , "ބ\x0007aaރ\x0007a7ސ\x0007b0ފ\x0007a6ތ\x0007a8"
      , "ބ\x0007aaދ\x0007a6"
      , "އ\x0007a6ނ\x0007b0ގ\x0007a7ރ\x0007a6"
      , "އ\x0007a7ދ\x0007a9އ\x0007b0ތ\x0007a6"
      ]
  )

wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "ހ\x0007aaކ\x0007aaރ\x0007aa"
  , "ހ\x0007aeނ\x0007a8ހ\x0007a8ރ\x0007aa"
  , "ހ\x0007afމ\x0007a6"
  , "ބ\x0007aaރ\x0007a7ސ\x0007b0ފ\x0007a6ތ\x0007a8"
  , "ބ\x0007aaދ\x0007a6"
  , "އ\x0007a6ނ\x0007b0ގ\x0007a7ރ\x0007a6"
  , "އ\x0007a7ދ\x0007a9އ\x0007b0ތ\x0007a6"
  ]
