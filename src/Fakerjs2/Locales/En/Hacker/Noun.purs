module Fakerjs2.Locales.En.Hacker.Noun (noun) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Noun)
import Unsafe.Coerce (unsafeCoerce)

noun :: Noun
noun = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "alarm"
  , "application"
  , "array"
  , "bandwidth"
  , "bus"
  , "capacitor"
  , "card"
  , "circuit"
  , "driver"
  , "feed"
  , "firewall"
  , "hard drive"
  , "interface"
  , "matrix"
  , "microchip"
  , "monitor"
  , "panel"
  , "pixel"
  , "port"
  , "program"
  , "protocol"
  , "sensor"
  , "system"
  , "transmitter"
  ]
