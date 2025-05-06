module Fakerjs2.Locales.BnBd.Date.Weekday (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Maybe (Maybe(..))
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

abbr = Just
  ( (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "ব\x0009c1ধ"
      , "ব\x0009c3হস\x0009cdপত\x0009bf"
      , "মঙ\x0009cdগল"
      , "রব\x0009bf"
      , "শন\x0009bf"
      , "শ\x0009c1ক\x0009cdর"
      , "স\x0009cbম"
      ]
  )

wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "ব\x0009c1ধব\x0009beর"
  , "ব\x0009c3হস\x0009cdপত\x0009bfব\x0009beর"
  , "মঙ\x0009cdগলব\x0009beর"
  , "রব\x0009bfব\x0009beর"
  , "শন\x0009bfব\x0009beর"
  , "শ\x0009c1ক\x0009cdরব\x0009beর"
  , "স\x0009cbমব\x0009beর"
  ]
