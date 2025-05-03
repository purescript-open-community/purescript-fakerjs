module Fakerjs2.Locales.EnAuOcker.Location.StreetSuffix (street_suffix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (StreetSuffix)
import Unsafe.Coerce (unsafeCoerce)

street_suffix :: StreetSuffix
street_suffix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Avenue"
  , "Boulevard"
  , "Circle"
  , "Circuit"
  , "Court"
  , "Crescent"
  , "Crest"
  , "Drive"
  , "Estate Dr"
  , "Grove"
  , "Hill"
  , "Island"
  , "Junction"
  , "Knoll"
  , "Lane"
  , "Loop"
  , "Mall"
  , "Manor"
  , "Meadow"
  , "Mews"
  , "Parade"
  , "Parkway"
  , "Pass"
  , "Place"
  , "Plaza"
  , "Ridge"
  , "Road"
  , "Run"
  , "Square"
  , "Station St"
  , "Street"
  , "Summit"
  , "Terrace"
  , "Track"
  , "Trail"
  , "View Rd"
  , "Way"
  ]
