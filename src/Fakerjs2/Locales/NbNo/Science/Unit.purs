module Fakerjs2.Locales.NbNo.Science.Unit (unit) where

import Data.String.NonEmpty (unsafeFromString)
import Fakerjs2.Types (Unit)

unit :: Unit
unit =
  [ { name: unsafeFromString "meter", symbol: unsafeFromString "m" }
  , { name: unsafeFromString "sekund", symbol: unsafeFromString "s" }
  , { name: unsafeFromString "mole", symbol: unsafeFromString "mol" }
  , { name: unsafeFromString "ampere", symbol: unsafeFromString "A" }
  , { name: unsafeFromString "kelvin", symbol: unsafeFromString "K" }
  , { name: unsafeFromString "candela", symbol: unsafeFromString "cd" }
  , { name: unsafeFromString "kilogram", symbol: unsafeFromString "kg" }
  , { name: unsafeFromString "radian", symbol: unsafeFromString "rad" }
  , { name: unsafeFromString "hertz", symbol: unsafeFromString "Hz" }
  , { name: unsafeFromString "newton", symbol: unsafeFromString "N" }
  , { name: unsafeFromString "pascal", symbol: unsafeFromString "Pa" }
  , { name: unsafeFromString "joule", symbol: unsafeFromString "J" }
  , { name: unsafeFromString "watt", symbol: unsafeFromString "W" }
  , { name: unsafeFromString "coulomb", symbol: unsafeFromString "C" }
  , { name: unsafeFromString "volt", symbol: unsafeFromString "V" }
  , { name: unsafeFromString "ohm", symbol: unsafeFromString "Ω" }
  , { name: unsafeFromString "tesla", symbol: unsafeFromString "T" }
  , { name: unsafeFromString "grad celsius", symbol: unsafeFromString "°C" }
  , { name: unsafeFromString "lumen", symbol: unsafeFromString "lm" }
  , { name: unsafeFromString "becquerel", symbol: unsafeFromString "Bq" }
  , { name: unsafeFromString "gray", symbol: unsafeFromString "Gy" }
  , { name: unsafeFromString "sievert", symbol: unsafeFromString "Sv" }
  ]
