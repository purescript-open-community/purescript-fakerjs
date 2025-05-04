module Fakerjs2.Locales.En.Hacker.Adjective (adjective) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

adjective = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "1080p"
  , "auxiliary"
  , "back-end"
  , "bluetooth"
  , "cross-platform"
  , "digital"
  , "haptic"
  , "mobile"
  , "multi-byte"
  , "neural"
  , "online"
  , "open-source"
  , "optical"
  , "primary"
  , "redundant"
  , "solid state"
  , "virtual"
  , "wireless"
  ]
