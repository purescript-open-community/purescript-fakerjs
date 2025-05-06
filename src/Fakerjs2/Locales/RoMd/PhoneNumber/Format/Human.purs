module Fakerjs2.Locales.RoMd.PhoneNumber.Format.Human (human) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

human = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "0220#####"
  , "0221#####"
  , "0222#####"
  , "0223#####"
  , "0224#####"
  , "0225#####"
  , "0226#####"
  , "0227#####"
  , "0228#####"
  , "0229#####"
  ]
