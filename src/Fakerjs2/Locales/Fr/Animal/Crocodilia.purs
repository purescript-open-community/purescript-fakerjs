module Fakerjs2.Locales.Fr.Animal.Crocodilia (crocodilia) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Crocodilia)
import Unsafe.Coerce (unsafeCoerce)

crocodilia :: Crocodilia
crocodilia = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Alligator d'Amérique"
  , "Alligator de Chine"
  , "Caïman de Schneider"
  , "Caïman nain"
  , "Caïman noir"
  , "Caïman à lunettes"
  , "Caïman à museau large"
  , "Crocodile américain"
  , "Crocodile d'Afrique de l'Ouest"
  , "Crocodile de Cuba"
  , "Crocodile de Johnston"
  , "Crocodile de Morelet"
  , "Crocodile de Nouvelle-Guinée"
  , "Crocodile de l'Orénoque"
  , "Crocodile des Philippines"
  , "Crocodile des marais"
  , "Crocodile du Nil"
  , "Crocodile du Siam"
  , "Crocodile marin"
  , "Crocodile nain"
  , "Faux-gavial d'Afrique"
  , "Faux-gavial de Malaisie"
  , "Gavial du Gange"
  , "Jacara"
  ]
