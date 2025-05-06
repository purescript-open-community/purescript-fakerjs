module Fakerjs2.Locales.Nl.Commerce.Department (department) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

department = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Auto"
  , "Baby"
  , "Beauty"
  , "Boeken"
  , "Computers"
  , "Elektronica"
  , "Films"
  , "Gereedschap"
  , "Gezondheid"
  , "Huis"
  , "Industrieel"
  , "Kinderen"
  , "Kleding"
  , "Kruiden"
  , "Muziek"
  , "Schoenen"
  , "Sieraden"
  , "Speelgoed"
  , "Spelletjes"
  , "Sport"
  , "Tuin"
  , "Verzorging"
  ]
