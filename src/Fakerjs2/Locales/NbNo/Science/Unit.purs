module Fakerjs2.Locales.NbNo.Science.Unit (unit) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

unit =
  ( unsafeCoerce
      :: Array { name :: String, symbol :: String }
      -> NonEmptyArray { name :: NonEmptyString, symbol :: NonEmptyString }
  )
    [ { name: "meter", symbol: "m" }
    , { name: "sekund", symbol: "s" }
    , { name: "mole", symbol: "mol" }
    , { name: "ampere", symbol: "A" }
    , { name: "kelvin", symbol: "K" }
    , { name: "candela", symbol: "cd" }
    , { name: "kilogram", symbol: "kg" }
    , { name: "radian", symbol: "rad" }
    , { name: "hertz", symbol: "Hz" }
    , { name: "newton", symbol: "N" }
    , { name: "pascal", symbol: "Pa" }
    , { name: "joule", symbol: "J" }
    , { name: "watt", symbol: "W" }
    , { name: "coulomb", symbol: "C" }
    , { name: "volt", symbol: "V" }
    , { name: "ohm", symbol: "Ω" }
    , { name: "tesla", symbol: "T" }
    , { name: "grad celsius", symbol: "°C" }
    , { name: "lumen", symbol: "lm" }
    , { name: "becquerel", symbol: "Bq" }
    , { name: "gray", symbol: "Gy" }
    , { name: "sievert", symbol: "Sv" }
    ]
