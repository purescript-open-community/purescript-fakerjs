module Fakerjs2.Locales.Pl.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (State)
import Unsafe.Coerce (unsafeCoerce)

state :: State
state = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "dolnośląskie"
  , "kujawsko-pomorskie"
  , "lubelskie"
  , "lubuskie"
  , "łódzkie"
  , "małopolskie"
  , "mazowieckie"
  , "opolskie"
  , "podkarpackie"
  , "podlaskie"
  , "pomorskie"
  , "śląskie"
  , "świętokrzyskie"
  , "warmińsko-mazurskie"
  , "wielkopolskie"
  , "zachodniopomorskie"
  ]
