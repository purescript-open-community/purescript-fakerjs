module Fakerjs2.Locales.DeCh.Location.StreetName (street_name) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (StreetName)
import Unsafe.Coerce (unsafeCoerce)

street_name :: StreetName
street_name = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Amthausstrasse"
  , "Augustinergasse"
  , "Bahnhofstrasse"
  , "Birkenweg"
  , "Bierkellerweg"
  , "Columbusstrasse"
  , "Dorfstrasse"
  , "Elefantenbach"
  , "Endingerstrasse"
  , "Glockengasse"
  , "Hauptstrasse"
  , "Hirschengraben"
  , "Honiggasse"
  , "Industriestrasse"
  , "Katzenplatz"
  , "Kirchweg"
  , "Knoblauchweg"
  , "Lindenhofweg"
  , "Melonenstrasse"
  , "Oberdorfstrasse"
  , "Ödhus"
  , "Ogimatte"
  , "Rämistrasse"
  , "Rennweg"
  , "Rosenweg"
  , "Schulhausstrasse"
  , "Schulstrasse"
  , "Sihlfeldstrasse"
  , "Trittligasse"
  , "Uraniastrasse"
  , "Vorstadt"
  ]
