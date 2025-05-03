module Fakerjs2.Locales.EnIe.Location.Postcode (postcode) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Postcode)
import Unsafe.Coerce (unsafeCoerce)

postcode :: Postcode
postcode = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "A## ****"
  , "D## ****"
  , "E## ****"
  , "F## ****"
  , "H## ****"
  , "K## ****"
  , "N## ****"
  , "P## ****"
  , "R## ****"
  , "T## ****"
  , "V## ****"
  , "W## ****"
  , "X## ****"
  , "Y## ****"
  ]
