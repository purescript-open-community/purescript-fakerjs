module Fakerjs2.Locales.Pl.Science.Unit (unit) where

import Data.String.NonEmpty (unsafeFromString)
import Fakerjs2.Types (Unit)

unit :: Unit
unit =
  [ { name: unsafeFromString "metr", symbol: unsafeFromString "m" }
  , { name: unsafeFromString "sekunda", symbol: unsafeFromString "s" }
  , { name: unsafeFromString "mol", symbol: unsafeFromString "mol" }
  , { name: unsafeFromString "amper", symbol: unsafeFromString "A" }
  , { name: unsafeFromString "kelwin", symbol: unsafeFromString "K" }
  , { name: unsafeFromString "kandela", symbol: unsafeFromString "cd" }
  , { name: unsafeFromString "kilogram", symbol: unsafeFromString "kg" }
  , { name: unsafeFromString "radian", symbol: unsafeFromString "rad" }
  , { name: unsafeFromString "herc", symbol: unsafeFromString "Hz" }
  , { name: unsafeFromString "niuton", symbol: unsafeFromString "N" }
  , { name: unsafeFromString "paskal", symbol: unsafeFromString "Pa" }
  , { name: unsafeFromString "dżul", symbol: unsafeFromString "J" }
  , { name: unsafeFromString "wat", symbol: unsafeFromString "W" }
  , { name: unsafeFromString "kulomb", symbol: unsafeFromString "C" }
  , { name: unsafeFromString "wolt", symbol: unsafeFromString "V" }
  , { name: unsafeFromString "om", symbol: unsafeFromString "Ω" }
  , { name: unsafeFromString "tesla", symbol: unsafeFromString "T" }
  , { name: unsafeFromString "stopień Celsjusza", symbol: unsafeFromString "°C" }
  , { name: unsafeFromString "lumen", symbol: unsafeFromString "lm" }
  , { name: unsafeFromString "bekerel", symbol: unsafeFromString "Bq" }
  , { name: unsafeFromString "grej", symbol: unsafeFromString "Gy" }
  , { name: unsafeFromString "siwert", symbol: unsafeFromString "Sv" }
  ]
