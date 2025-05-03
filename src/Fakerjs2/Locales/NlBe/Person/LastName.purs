module Fakerjs2.Locales.NlBe.Person.LastName (generic) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (LastNameGeneric)
import Unsafe.Coerce (unsafeCoerce)

generic :: LastNameGeneric
generic = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Claes"
  , "Claeys"
  , "Declerck"
  , "Declercq"
  , "Decock"
  , "Decoster"
  , "Desmet"
  , "Devos"
  , "Dewilde"
  , "Gielen"
  , "Goossens"
  , "Hermans"
  , "Jacobs"
  , "Janssen"
  , "Janssens"
  , "Lemmens"
  , "Maes"
  , "Martens"
  , "Mertens"
  , "Michiels"
  , "Peeters"
  , "Smet"
  , "Smets"
  , "Thijs"
  , "Vandamme"
  , "Vandenberghe"
  , "Vandenbroeck"
  , "Vandevelde"
  , "Verhaeghe"
  , "Verstraete"
  , "Willems"
  , "Wouters"
  ]
