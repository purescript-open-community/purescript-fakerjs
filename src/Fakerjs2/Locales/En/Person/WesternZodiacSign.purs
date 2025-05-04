module Fakerjs2.Locales.En.Person.WesternZodiacSign (western_zodiac_sign) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

western_zodiac_sign = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Aquarius"
  , "Pisces"
  , "Aries"
  , "Taurus"
  , "Gemini"
  , "Cancer"
  , "Leo"
  , "Virgo"
  , "Libra"
  , "Scorpio"
  , "Sagittarius"
  , "Capricorn"
  ]
