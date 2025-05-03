module Fakerjs2.Locales.He.CellPhone.Formats (formats) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Formats)
import Unsafe.Coerce (unsafeCoerce)

formats :: Formats
formats = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "050-#######"
  , "051-#######"
  , "052-#######"
  , "053-#######"
  , "054-#######"
  , "055-#######"
  , "057-#######"
  , "058-#######"
  , "+972-50-#######"
  , "+972-51-#######"
  , "+972-52-#######"
  , "+972-53-#######"
  , "+972-54-#######"
  , "+972-55-#######"
  , "+972-57-#######"
  , "+972-58-#######"
  ]
