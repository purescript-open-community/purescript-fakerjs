module Fakerjs2.Locales.EsMx.Location.StateAbbr (state_abbr) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (StateAbbr)
import Unsafe.Coerce (unsafeCoerce)

state_abbr :: StateAbbr
state_abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "AS"
  , "BC"
  , "BS"
  , "CC"
  , "CS"
  , "CH"
  , "CL"
  , "CM"
  , "DF"
  , "DG"
  , "GT"
  , "GR"
  , "HG"
  , "JC"
  , "MC"
  , "MN"
  , "MS"
  , "NT"
  , "NL"
  , "OC"
  , "PL"
  , "QT"
  , "QR"
  , "SP"
  , "SL"
  , "SR"
  , "TC"
  , "TS"
  , "TL"
  , "VZ"
  , "YN"
  , "ZS"
  ]
