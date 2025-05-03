module Fakerjs2.Locales.Nl.Hacker.Verb (verb) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Verb)
import Unsafe.Coerce (unsafeCoerce)

verb :: Verb
verb = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "aansluiten"
  , "analyseren"
  , "back-uppen"
  , "berekenen"
  , "genereren"
  , "hacken"
  , "herstarten"
  , "in stukjes snijden"
  , "indexeren"
  , "invoeren"
  , "kopiëren"
  , "kwantificeren"
  , "navigeren"
  , "omzeilen"
  , "ontleden"
  , "overschrijven"
  , "programmeren"
  , "samenpersen"
  , "samenstellen"
  , "verzenden"
  ]
