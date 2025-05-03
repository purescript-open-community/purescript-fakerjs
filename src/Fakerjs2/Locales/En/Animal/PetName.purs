module Fakerjs2.Locales.En.Animal.PetName (pet_name) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (PetName)
import Unsafe.Coerce (unsafeCoerce)

pet_name :: PetName
pet_name = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Ace"
  , "Archie"
  , "Bailey"
  , "Bandit"
  , "Bella"
  , "Bentley"
  , "Bruno"
  , "Buddy"
  , "Charlie"
  , "Coco"
  , "Cookie"
  , "Cooper"
  , "Daisy"
  , "Dixie"
  , "Finn"
  , "Ginger"
  , "Gracie"
  , "Gus"
  , "Hank"
  , "Jack"
  , "Jax"
  , "Joey"
  , "Kobe"
  , "Leo"
  , "Lola"
  , "Louie"
  , "Lucy"
  , "Maggie"
  , "Max"
  , "Mia"
  , "Milo"
  , "Molly"
  , "Murphey"
  , "Nala"
  , "Nova"
  , "Ollie"
  , "Oreo"
  , "Rosie"
  , "Scout"
  , "Stella"
  , "Teddy"
  , "Tuffy"
  ]
