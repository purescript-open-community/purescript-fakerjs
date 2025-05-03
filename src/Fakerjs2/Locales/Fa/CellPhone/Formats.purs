module Fakerjs2.Locales.Fa.CellPhone.Formats (formats) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Formats)
import Unsafe.Coerce (unsafeCoerce)

formats :: Formats
formats = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "0912 ### ####"
  , "0911 ### ####"
  , "0919 ### ####"
  , "0917 ### ####"
  , "0920 ### ####"
  , "0921 ### ####"
  , "0936 ### ####"
  , "0937 ### ####"
  , "0938 ### ####"
  , "0939 ### ####"
  , "0935 ### ####"
  , "0933 ### ####"
  , "0901 ### ####"
  , "0902 ### ####"
  , "0903 ### ####"
  , "0904 ### ####"
  , "0905 ### ####"
  ]
