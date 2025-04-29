module Fakerjs2.Locales.Base.Database.Engine (engine, engineGen) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Engine)
import Unsafe.Coerce (unsafeCoerce)

engine :: Engine
engine = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "ARCHIVE", "BLACKHOLE", "CSV", "InnoDB", "MEMORY", "MyISAM" ]

engineGen :: Gen Engine
engineGen = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "ARCHIVE", "BLACKHOLE", "CSV", "InnoDB", "MEMORY", "MyISAM" ]
