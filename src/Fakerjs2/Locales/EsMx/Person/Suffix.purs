module Fakerjs2.Locales.EsMx.Person.Suffix (suffix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Suffix)
import Unsafe.Coerce (unsafeCoerce)

suffix :: Suffix
suffix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Jr."
  , "Sr."
  , "I"
  , "II"
  , "III"
  , "IV"
  , "V"
  , "MD"
  , "DDS"
  , "PhD"
  , "DVM"
  , "Ing."
  , "Lic."
  , "Dr."
  , "Mtro."
  ]
