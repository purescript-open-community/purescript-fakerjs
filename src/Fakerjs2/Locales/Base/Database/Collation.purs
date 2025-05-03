module Fakerjs2.Locales.Base.Database.Collation (collation) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Collation)
import Unsafe.Coerce (unsafeCoerce)

collation :: Collation
collation = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "ascii_bin"
  , "ascii_general_ci"
  , "cp1250_bin"
  , "cp1250_general_ci"
  , "utf8_bin"
  , "utf8_general_ci"
  , "utf8_unicode_ci"
  ]
