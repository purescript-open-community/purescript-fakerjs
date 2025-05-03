module Fakerjs2.Locales.EnZa.CellPhone.Formats (formats) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Formats)
import Unsafe.Coerce (unsafeCoerce)

formats :: Formats
formats = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "+2760 ### ####"
  , "+2761 ### ####"
  , "+2763 ### ####"
  , "+2772 ### ####"
  , "+2773 ### ####"
  , "+2774 ### ####"
  , "+2776 ### ####"
  , "+2779 ### ####"
  , "+2781 ### ####"
  , "+2782 ### ####"
  , "+2783 ### ####"
  , "+2784 ### ####"
  , "082 ### ####"
  , "084 ### ####"
  , "083 ### ####"
  , "065 ### ####"
  , "082#######"
  , "082 #######"
  ]
