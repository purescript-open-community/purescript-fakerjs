module Fakerjs2.Locales.En.Hacker.Ingverb (ingverb) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

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
