module Fakerjs2.Locales.Pl.Color.Human (human) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Human)
import Unsafe.Coerce (unsafeCoerce)

human :: Human
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
