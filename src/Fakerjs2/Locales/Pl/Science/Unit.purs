module Fakerjs2.Locales.Pl.Science.Unit (unit) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

unit =
  ( unsafeCoerce
      :: Array { name :: String, symbol :: String }
      -> NonEmptyArray { name :: NonEmptyString, symbol :: NonEmptyString }
  )
    [ { name: "metr", symbol: "m" }
    , { name: "sekunda", symbol: "s" }
    , { name: "mol", symbol: "mol" }
    , { name: "amper", symbol: "A" }
    , { name: "kelwin", symbol: "K" }
    , { name: "kandela", symbol: "cd" }
    , { name: "kilogram", symbol: "kg" }
    , { name: "radian", symbol: "rad" }
    , { name: "herc", symbol: "Hz" }
    , { name: "niuton", symbol: "N" }
    , { name: "paskal", symbol: "Pa" }
    , { name: "dżul", symbol: "J" }
    , { name: "wat", symbol: "W" }
    , { name: "kulomb", symbol: "C" }
    , { name: "wolt", symbol: "V" }
    , { name: "om", symbol: "Ω" }
    , { name: "tesla", symbol: "T" }
    , { name: "stopień Celsjusza", symbol: "°C" }
    , { name: "lumen", symbol: "lm" }
    , { name: "bekerel", symbol: "Bq" }
    , { name: "grej", symbol: "Gy" }
    , { name: "siwert", symbol: "Sv" }
    ]
