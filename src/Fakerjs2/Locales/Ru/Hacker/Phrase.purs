module Fakerjs2.Locales.Ru.Hacker.Phrase (phrase) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

phrase = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "{{abbreviation}} {{noun}} недоступен, требуется {{verb}} {{adjective}} {{noun}}, чтобы мы могли {{verb}} {{abbreviation}} {{noun}}!"
  , "{{ingverb}} не работает, попробуйте {{verb}} {{adjective}} {{abbreviation}} {{noun}}!"
  , "Вы не можете {{verb}} {{noun}}, требуется {{ingverb}} или {{ingverb}}!"
  , "Используйте {{adjective}} {{abbreviation}} {{noun}}, для того чтобы {{verb}} {{adjective}} {{noun}}!"
  , "Необходимо {{verb}} {{adjective}} {{abbreviation}} {{noun}}!"
  , "Попробуйте {{verb}} {{abbreviation}} {{noun}}, возможно это позволит {{verb}} {{adjective}} {{noun}}!"
  , "Чтобы {{verb}} {{noun}}, мы можем получить {{abbreviation}} {{noun}} через {{adjective}} {{abbreviation}} {{noun}}!"
  , "Я планирую {{verb}} {{adjective}} {{abbreviation}} {{noun}}, это должно помочь {{verb}} {{abbreviation}} {{noun}}!"
  ]
