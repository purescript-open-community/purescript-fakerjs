module Fakerjs2.Locales.DeAt.Person.NobilityTitlePrefix (nobility_title_prefix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

nobility_title_prefix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "zu", "von", "vom", "von der" ]
