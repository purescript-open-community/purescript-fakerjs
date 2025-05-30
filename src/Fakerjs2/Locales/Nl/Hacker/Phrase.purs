module Fakerjs2.Locales.Nl.Hacker.Phrase (phrase) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

phrase = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Als we de {{noun}} {{verb}}, dan kunnen we naar de {{abbreviation}} {{noun}} via de {{adjective}} {{abbreviation}} {{noun}}!"
  , "De {{abbreviation}} {{noun}} ligt eruit, jullie moeten de {{adjective}} {{noun}} {{verb}} zodat we de {{abbreviation}} {{noun}} kunnen {{verb}}!"
  , "Gebruik de {{adjective}} {{abbreviation}} {{noun}}, dan kan je de {{adjective}} {{noun}} {{verb}}!"
  , "Het maakt niet uit of we de {{noun}} {{verb}}, we moeten de {{adjective}} {{abbreviation}} {{noun}} {{verb}}!"
  , "Ik ga de {{adjective}} {{abbreviation}} {{noun}} {{verb}}, dat zou de {{noun}} moeten {{verb}}!"
  , "Je kan de {{noun}} niet {{verb}} zonder de {{adjective}} {{abbreviation}} {{noun}} te {{verb}}!"
  , "Probeer om de {{abbreviation}} {{noun}} te {{verb}}, misschien gaat dat de {{adjective}} {{noun}} {{verb}}!"
  , "We moeten de {{adjective}} {{abbreviation}} {{noun}} {{verb}}!"
  ]
