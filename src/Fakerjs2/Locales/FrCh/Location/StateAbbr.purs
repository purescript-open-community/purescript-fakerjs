module Fakerjs2.Locales.FrCh.Location.StateAbbr (state_abbr) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (StateAbbr)
import Unsafe.Coerce (unsafeCoerce)

state_abbr :: StateAbbr
state_abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "AG"
  , "AI"
  , "AR"
  , "BE"
  , "BL"
  , "BS"
  , "FR"
  , "GE"
  , "GL"
  , "GR"
  , "JU"
  , "LU"
  , "NE"
  , "NW"
  , "OW"
  , "SG"
  , "SH"
  , "SO"
  , "SZ"
  , "TG"
  , "TI"
  , "UR"
  , "VD"
  , "VS"
  , "ZG"
  , "ZH"
  ]
