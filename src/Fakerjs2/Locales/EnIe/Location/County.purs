module Fakerjs2.Locales.EnIe.Location.County (county) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (County)
import Unsafe.Coerce (unsafeCoerce)

county :: County
county = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Carlow"
  , "Cavan"
  , "Clare"
  , "Cork"
  , "Donegal"
  , "Dublin"
  , "Galway"
  , "Kerry"
  , "Kildare"
  , "Kilkenny"
  , "Laois"
  , "Leitrim"
  , "Limerick"
  , "Longford"
  , "Louth"
  , "Mayo"
  , "Meath"
  , "Monaghan"
  , "Offaly"
  , "Roscommon"
  , "Sligo"
  , "Tipperary"
  , "Waterford"
  , "Westmeath"
  , "Wexford"
  , "Wicklow"
  ]
