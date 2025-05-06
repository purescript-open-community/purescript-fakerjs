module Fakerjs2.Locales.EsMx.Team.Name (name) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

name = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "{{location.state}} {{team.creature}}" ]
