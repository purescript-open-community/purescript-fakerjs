module Fakerjs2.Locales.Dv.Color.Human (human) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Human)
import Unsafe.Coerce (unsafeCoerce)

human :: Human
human = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "ހ\x0007aaދ\x0007aa"
  , "ނ\x0007a7ރ\x0007a8ނގ\x0007aaކ\x0007aaލ\x0007a6"
  , "ނ\x0007ab"
  , "ރ\x0007a6ނ\x0007b0ކ\x0007aaލ\x0007a6"
  , "ރ\x0007a6ތ\x0007b0"
  , "ރ\x0007a8ހ\x0007a8ކ\x0007aaލ\x0007a6"
  , "ރ\x0007a9ނދ\x0007abކ\x0007aaލ\x0007a6"
  , "ކ\x0007a6ޅ\x0007aa"
  , "އ\x0007a6ޅ\x0007a8ކ\x0007aaލ\x0007a6"
  , "ވ\x0007a8ލ\x0007aaނ\x0007ab"
  , "މ\x0007a6ޑ\x0007aaފ\x0007acހ\x0007a8"
  , "މ\x0007aaށ\x0007a8ކ\x0007aaލ\x0007a6"
  , "ފ\x0007a8ޔ\x0007a7ތ\x0007aeށ\x0007a8ކ\x0007aaލ\x0007a6"
  , "ފ\x0007acހ\x0007a8ކ\x0007aaލ\x0007a6"
  , "ދ\x0007a6ނބ\x0007aaކ\x0007aaލ\x0007a6"
  ]
