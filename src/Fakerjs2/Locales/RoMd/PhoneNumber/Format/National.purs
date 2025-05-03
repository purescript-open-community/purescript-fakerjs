module Fakerjs2.Locales.RoMd.PhoneNumber.Format.National (national) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (National)
import Unsafe.Coerce (unsafeCoerce)

national :: National
national = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "022 0## ###"
  , "022 1## ###"
  , "022 2## ###"
  , "022 3## ###"
  , "022 4## ###"
  , "022 5## ###"
  , "022 6## ###"
  , "022 7## ###"
  , "022 8## ###"
  , "022 9## ###"
  ]
