module Fakerjs2.Locales.EnAuOcker.Person.LastName (generic) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (LastNameGeneric)
import Unsafe.Coerce (unsafeCoerce)

generic :: LastNameGeneric
generic = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Anderson"
  , "Brown"
  , "Connolly"
  , "Harris"
  , "Jones"
  , "Kelly"
  , "King"
  , "LeQuesne"
  , "Lee"
  , "Martin"
  , "Morton"
  , "Nguyen"
  , "Rausch"
  , "Ridge"
  , "Robinson"
  , "Ryan"
  , "Smith"
  , "Taylor"
  , "Thomas"
  , "Thompson"
  , "Walker"
  , "White"
  , "Williams"
  , "Wilson"
  ]
