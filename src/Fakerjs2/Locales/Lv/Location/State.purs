module Fakerjs2.Locales.Lv.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (State)
import Unsafe.Coerce (unsafeCoerce)

state :: State
state = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Aizkraukles raj."
  , "Alūksnes raj."
  , "Baltijas jūra"
  , "Balvu raj."
  , "Bauskas raj."
  , "Cēsu raj."
  , "Daugavpils raj."
  , "Dobeles raj."
  , "Gulbenes raj."
  , "Jēkabpils raj."
  , "Jelgavas raj."
  , "Jūrmala"
  , "Krāslavas raj."
  , "Kuldīgas raj."
  , "Liepājas raj."
  , "Limbažu raj."
  , "Ludzas raj."
  , "Madonas raj."
  , "Ogres raj."
  , "Preiļu raj."
  , "Rēzeknes raj."
  , "Rīga un Rīgas raj."
  , "Saldus raj."
  , "Talsu raj."
  , "Tukuma raj."
  , "Valkas raj."
  , "Valmieras raj."
  , "Ventspils raj."
  ]
