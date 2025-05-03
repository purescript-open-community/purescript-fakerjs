module Fakerjs2.Locales.Nl.Hacker.Noun (noun) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Noun)
import Unsafe.Coerce (unsafeCoerce)

noun :: Noun
noun = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "alarm"
  , "array"
  , "bandbreedte"
  , "bus"
  , "condensator"
  , "draad"
  , "driver"
  , "firewall"
  , "harde schijf"
  , "kaart"
  , "matrix"
  , "microchip"
  , "monitor"
  , "paneel"
  , "pixel"
  , "port"
  , "programma"
  , "protocol"
  , "sensor"
  , "stekker"
  , "stroomkring"
  , "systeem"
  , "toepassing"
  , "verbinding"
  , "voeding"
  , "zender"
  ]
