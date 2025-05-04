module Fakerjs2.Locales.En.Hacker.Verb (verb) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

verb = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "back up"
  , "bypass"
  , "calculate"
  , "compress"
  , "connect"
  , "copy"
  , "generate"
  , "hack"
  , "index"
  , "input"
  , "navigate"
  , "override"
  , "parse"
  , "program"
  , "quantify"
  , "reboot"
  , "synthesize"
  , "transmit"
  ]
