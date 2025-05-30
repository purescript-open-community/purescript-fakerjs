module Fakerjs2.Locales.FrBe.CellPhone.Formats (formats) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

formats = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "###/######"
  , "###/## ## ##"
  , "### ## ## ##"
  , "###/### ###"
  , "##########"
  , "04##/### ###"
  , "04## ## ## ##"
  , "00324 ## ## ##"
  , "+324 ## ## ## ##"
  , "0455 ## ##"
  , "0456 ## ##"
  , "046# ## ##"
  , "047# ## ##"
  , "048# ## ##"
  , "049# ## ##"
  , "0032 455 ## ##"
  , "0032 456 ## ##"
  , "0032 46# ## ##"
  , "0032 47# ## ##"
  , "0032 48# ## ##"
  , "0032 49# ## ##"
  , "+32 455 ## ##"
  , "+32 456 ## ##"
  , "+32 46# ## ##"
  , "+32 47# ## ##"
  , "+32 48# ## ##"
  , "+32 49# ## ##"
  , "+32 461 8# ##"
  ]
