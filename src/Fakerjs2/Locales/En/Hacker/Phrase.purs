module Fakerjs2.Locales.En.Hacker.Phrase (phrase) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

phrase = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "I'll {{verb}} the {{adjective}} {{abbreviation}} {{noun}}, that should {{noun}} the {{abbreviation}} {{noun}}!"
  , "If we {{verb}} the {{noun}}, we can get to the {{abbreviation}} {{noun}} through the {{adjective}} {{abbreviation}} {{noun}}!"
  , "The {{abbreviation}} {{noun}} is down, {{verb}} the {{adjective}} {{noun}} so we can {{verb}} the {{abbreviation}} {{noun}}!"
  , "Try to {{verb}} the {{abbreviation}} {{noun}}, maybe it will {{verb}} the {{adjective}} {{noun}}!"
  , "Use the {{adjective}} {{abbreviation}} {{noun}}, then you can {{verb}} the {{adjective}} {{noun}}!"
  , "We need to {{verb}} the {{adjective}} {{abbreviation}} {{noun}}!"
  , "You can't {{verb}} the {{noun}} without {{ingverb}} the {{adjective}} {{abbreviation}} {{noun}}!"
  , "{{ingverb}} the {{noun}} won't do anything, we need to {{verb}} the {{adjective}} {{abbreviation}} {{noun}}!"
  ]
