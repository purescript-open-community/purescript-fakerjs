module Fakerjs2.Locales.El.Hacker.Verb (verb) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Verb)
import Unsafe.Coerce (unsafeCoerce)

verb :: Verb
verb = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "back up"
  , "bypass"
  , "hack"
  , "αντιγραφή"
  , "είσοδος"
  , "επανεκκίνηση"
  , "μεταφορά"
  , "περιήγηση"
  , "προσπέλαση"
  , "προσπέραση"
  , "πρόγραμμα"
  , "συμπίεση"
  , "σύνδεση"
  , "υπολογισμός"
  ]
