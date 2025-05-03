module Fakerjs2.Locales.PtBr.Person.LastName (generic) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (LastNameGeneric)
import Unsafe.Coerce (unsafeCoerce)

generic :: LastNameGeneric
generic = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Albuquerque"
  , "Barros"
  , "Batista"
  , "Braga"
  , "Carvalho"
  , "Costa"
  , "Franco"
  , "Macedo"
  , "Martins"
  , "Melo"
  , "Moraes"
  , "Moreira"
  , "Nogueira"
  , "Oliveira"
  , "Pereira"
  , "Reis"
  , "Santos"
  , "Saraiva"
  , "Silva"
  , "Souza"
  , "Xavier"
  ]
