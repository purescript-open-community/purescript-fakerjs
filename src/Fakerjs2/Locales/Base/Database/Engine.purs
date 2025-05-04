module Fakerjs2.Locales.Base.Database.Engine (engine) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

engine = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "ARCHIVE", "BLACKHOLE", "CSV", "InnoDB", "MEMORY", "MyISAM" ]
