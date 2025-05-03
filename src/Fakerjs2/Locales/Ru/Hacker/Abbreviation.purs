module Fakerjs2.Locales.Ru.Hacker.Abbreviation (abbreviation) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Abbreviation)
import Unsafe.Coerce (unsafeCoerce)

abbreviation :: Abbreviation
abbreviation = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "ADP"
  , "AGP"
  , "COM"
  , "CSS"
  , "EXE"
  , "FTP"
  , "HTTP"
  , "JSON"
  , "PCI"
  , "PNG"
  , "RSS"
  , "SAS"
  , "SDD"
  , "SMS"
  , "SMTP"
  , "SSL"
  , "USB"
  , "XML"
  , "XSS"
  , "БИОС"
  , "Гб"
  , "ИИ"
  , "НМЖД"
  , "ОЗУ"
  , "ОС"
  , "ПЗУ"
  , "ПО"
  , "СУБД"
  , "ХЗ"
  , "ЭВМ"
  ]
