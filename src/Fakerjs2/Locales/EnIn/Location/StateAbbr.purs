module Fakerjs2.Locales.EnIn.Location.StateAbbr (state_abbr) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (StateAbbr)
import Unsafe.Coerce (unsafeCoerce)

state_abbr :: StateAbbr
state_abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "AN"
  , "AP"
  , "AR"
  , "AS"
  , "BR"
  , "CH"
  , "CG"
  , "DN"
  , "DD"
  , "DL"
  , "GA"
  , "GJ"
  , "HR"
  , "HP"
  , "JK"
  , "JH"
  , "KA"
  , "KL"
  , "LD"
  , "MP"
  , "MH"
  , "MN"
  , "ML"
  , "MZ"
  , "NL"
  , "OD"
  , "PY"
  , "PB"
  , "RJ"
  , "SK"
  , "TN"
  , "TS"
  , "TR"
  , "UP"
  , "UK"
  , "WB"
  ]
