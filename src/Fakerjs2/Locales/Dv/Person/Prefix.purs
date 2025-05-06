module Fakerjs2.Locales.Dv.Person.Prefix (female, generic, male) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

female = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "ބ\x0007a6ނޑ\x0007adރ\x0007a8"
  , "ބ\x0007aeޑ\x0007aa"
  , "އ\x0007a6މ\x0007a9ރ\x0007a7"
  , "އ\x0007a6މ\x0007a9ރ\x0007aa"
  ]

generic = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "ބ\x0007a6ނޑ\x0007adރ\x0007a8"
  , "ބ\x0007aeޑ\x0007aa"
  , "އ\x0007a6މ\x0007a9ރ\x0007a7"
  , "އ\x0007a6މ\x0007a9ރ\x0007aa"
  ]

male = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "ބ\x0007a6ނޑ\x0007adރ\x0007a8"
  , "ބ\x0007aeޑ\x0007aa"
  , "އ\x0007a6މ\x0007a9ރ\x0007a7"
  , "އ\x0007a6މ\x0007a9ރ\x0007aa"
  ]
