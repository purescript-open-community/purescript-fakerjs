module Fakerjs2.Locales.En.Hacker.Ingverb (ingverb) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Ingverb)
import Unsafe.Coerce (unsafeCoerce)

ingverb :: Ingverb
ingverb = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "backing up"
  , "bypassing"
  , "calculating"
  , "compressing"
  , "connecting"
  , "copying"
  , "generating"
  , "hacking"
  , "indexing"
  , "navigating"
  , "overriding"
  , "parsing"
  , "programming"
  , "quantifying"
  , "synthesizing"
  , "transmitting"
  ]
