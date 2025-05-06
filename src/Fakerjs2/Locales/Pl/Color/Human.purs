module Fakerjs2.Locales.Pl.Color.Human (human) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

human = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "beżowy"
  , "biały"
  , "brązowy"
  , "czarny"
  , "czerwony"
  , "fioletowy"
  , "granatowy"
  , "niebieski"
  , "pomarańczowy"
  , "różowy"
  , "szary"
  , "zielony"
  , "żółty"
  ]
