module Fakerjs2.Locales.Eo.Person.WesternZodiacSign (western_zodiac_sign) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (WesternZodiacSign)
import Unsafe.Coerce (unsafeCoerce)

western_zodiac_sign :: WesternZodiacSign
western_zodiac_sign = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Akvisto"
  , "Fiŝoj"
  , "Ŝafo"
  , "Bovo"
  , "Ĝemeloj"
  , "Kankro"
  , "Leono"
  , "Virgulo"
  , "Pesilo"
  , "Skorpio"
  , "Pafisto"
  , "Kaprikorno"
  ]
