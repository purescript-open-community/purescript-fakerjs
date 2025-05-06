module Fakerjs2.Locales.FrLu.CellPhone.Formats (formats) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

formats = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "621 ### ###"
  , "661 ### ###"
  , "671 ### ###"
  , "691 ### ###"
  , "+352 621 ### ###"
  , "+352 661 ### ###"
  , "+352 671 ### ###"
  , "+352 691 ### ###"
  ]
