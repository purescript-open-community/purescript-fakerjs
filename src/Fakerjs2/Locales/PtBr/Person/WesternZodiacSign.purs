module Fakerjs2.Locales.PtBr.Person.WesternZodiacSign (western_zodiac_sign) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

western_zodiac_sign = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Aquário"
  , "Peixes"
  , "Áries"
  , "Touro"
  , "Gêmeos"
  , "Câncer"
  , "Leão"
  , "Virgem"
  , "Libra"
  , "Escorpião"
  , "Sagitário"
  , "Capricórnio"
  ]
