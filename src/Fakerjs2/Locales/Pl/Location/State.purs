module Fakerjs2.Locales.Pl.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Unsafe.Coerce (unsafeCoerce)

state = (unsafeCoerce :: Array String -> NonEmptyArray String)
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
