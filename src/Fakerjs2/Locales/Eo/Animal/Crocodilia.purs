module Fakerjs2.Locales.Eo.Animal.Crocodilia (crocodilia) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Crocodilia)
import Unsafe.Coerce (unsafeCoerce)

crocodilia :: Crocodilia
crocodilia = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "amerika krokodilo"
  , "aŭstralia krokodilo"
  , "filipina krokodilo"
  , "gavialo"
  , "kuba krokodilo"
  , "mara krokodilo"
  , "marĉa krokodilo"
  , "meksika krokodilo"
  , "misisipa aligatoro"
  , "nana krokodilo"
  , "nigra kajmano"
  , "nila krokodilo"
  , "okcidentafrika krokodilo"
  , "orinoka krokodilo"
  , "siama krokodilo"
  , "ĉina aligatoro"
  ]
