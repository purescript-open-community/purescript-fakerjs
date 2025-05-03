module Fakerjs2.Locales.Eo.Person.BioPattern (bio_pattern) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (BioPattern)
import Unsafe.Coerce (unsafeCoerce)

bio_pattern :: BioPattern
bio_pattern = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "{{person.bio_part}}"
  , "{{person.bio_part}} {{internet.emoji}}"
  , "{{person.bio_part}}, {{person.bio_part}}"
  , "{{person.bio_part}}, {{person.bio_part}} {{internet.emoji}}"
  , "{{person.bio_part}}, {{person.bio_part}}, {{person.bio_part}}"
  , "{{person.bio_part}}, {{person.bio_part}}, {{person.bio_part}} {{internet.emoji}}"
  ]
