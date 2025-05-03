module Fakerjs2.Locales.EnCa.Location.Postcode (postcode) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Postcode)
import Unsafe.Coerce (unsafeCoerce)

postcode :: Postcode
postcode = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "A#? #?#"
  , "B#? #?#"
  , "C#? #?#"
  , "E#? #?#"
  , "G#? #?#"
  , "H#? #?#"
  , "J#? #?#"
  , "K#? #?#"
  , "L#? #?#"
  , "M#? #?#"
  , "N#? #?#"
  , "P#? #?#"
  , "R#? #?#"
  , "S#? #?#"
  , "T#? #?#"
  , "V#? #?#"
  , "X#? #?#"
  , "Y#? #?#"
  ]
