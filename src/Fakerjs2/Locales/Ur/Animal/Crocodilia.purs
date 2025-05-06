module Fakerjs2.Locales.Ur.Animal.Crocodilia (crocodilia) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

crocodilia = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "امریکی گڑیال"
  , "ا\x000653سٹریلیائ تازہ پانی کا گڑیال"
  , "مشرقی افریقی گڑیال"
  , "نمکین پانی کا گڑیال"
  , "نیل گڑیال"
  , "گڑیال"
  ]
