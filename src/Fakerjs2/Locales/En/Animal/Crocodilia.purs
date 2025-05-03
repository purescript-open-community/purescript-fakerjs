module Fakerjs2.Locales.En.Animal.Crocodilia (crocodilia) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Crocodilia)
import Unsafe.Coerce (unsafeCoerce)

crocodilia :: Crocodilia
crocodilia = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "African Slender-snouted Crocodile"
  , "Alligator mississippiensis"
  , "American Crocodile"
  , "Australian Freshwater Crocodile"
  , "Black Caiman"
  , "Broad-snouted Caiman"
  , "Chinese Alligator"
  , "Cuban Crocodile"
  , "Cuvier’s Dwarf Caiman"
  , "Dwarf Crocodile"
  , "Gharial"
  , "Morelet’s Crocodile"
  , "Mugger Crocodile"
  , "New Guinea Freshwater Crocodile"
  , "Nile Crocodile"
  , "Orinoco Crocodile"
  , "Philippine Crocodile"
  , "Saltwater Crocodile"
  , "Schneider’s Smooth-fronted Caiman"
  , "Siamese Crocodile"
  , "Spectacled Caiman"
  , "Tomistoma"
  , "West African Crocodile"
  , "Yacare Caiman"
  ]
