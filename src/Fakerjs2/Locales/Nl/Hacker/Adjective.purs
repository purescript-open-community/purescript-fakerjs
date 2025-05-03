module Fakerjs2.Locales.Nl.Hacker.Adjective (adjective) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Adjective)
import Unsafe.Coerce (unsafeCoerce)

adjective :: Adjective
adjective = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Bluetooth"
  , "cross-platform"
  , "cruciale"
  , "digitale"
  , "draadloze"
  , "haptische"
  , "kostbare"
  , "minuscule"
  , "mobiele"
  , "multi-byte"
  , "neurale"
  , "onderliggende"
  , "ondersteunende"
  , "online"
  , "open source"
  , "optische"
  , "overtollige"
  , "primaire"
  , "smakelijke"
  , "solid state"
  , "verwaarloosde"
  , "virtuele"
  ]
