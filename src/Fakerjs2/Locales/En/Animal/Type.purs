module Fakerjs2.Locales.En.Animal.Type (type_) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Type)
import Unsafe.Coerce (unsafeCoerce)

type_ :: Type
type_ = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "bat"
  , "bear"
  , "bee"
  , "bird"
  , "butterfly"
  , "cat"
  , "cow"
  , "crocodile"
  , "deer"
  , "dog"
  , "dolphin"
  , "eagle"
  , "elephant"
  , "fish"
  , "flamingo"
  , "fox"
  , "frog"
  , "gecko"
  , "giraffe"
  , "gorilla"
  , "hamster"
  , "hippopotamus"
  , "horse"
  , "kangaroo"
  , "koala"
  , "lion"
  , "monkey"
  , "ostrich"
  , "panda"
  , "parrot"
  , "peacock"
  , "penguin"
  , "polar bear"
  , "rabbit"
  , "rhinoceros"
  , "sea lion"
  , "shark"
  , "snake"
  , "squirrel"
  , "tiger"
  , "turtle"
  , "whale"
  , "wolf"
  , "zebra"
  ]
