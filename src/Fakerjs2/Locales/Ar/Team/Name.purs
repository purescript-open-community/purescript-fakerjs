module Fakerjs2.Locales.Ar.Team.Name (name) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Name)
import Unsafe.Coerce (unsafeCoerce)

name :: Name
name = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "{{location.state}} {{team.creature}}" ]
