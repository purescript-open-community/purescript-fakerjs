module Fakerjs2.Locales.EnNg.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (State)
import Unsafe.Coerce (unsafeCoerce)

state :: State
state = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "FCT"
  , "ABIA"
  , "ADAMAWA"
  , "Akwa Ibom"
  , "Anambra"
  , "Bauchi"
  , "Bayelsa"
  , "Benue"
  , "Bornu"
  , "Cross River"
  , "Delta"
  , "Ebonyi"
  , "Edo"
  , "Ekiti"
  , "Enugu"
  , "Gombe"
  , "Imo"
  , "Jigawa"
  , "Kaduna"
  , "Kano"
  , "Katsina"
  , "Kebbi"
  , "Kogi"
  , "Kwara"
  , "Lagos"
  , "Nasarawa"
  , "Niger"
  , "Ogun"
  , "Ondo"
  , "Osun"
  , "Oyo"
  , "Plateau"
  , "Rivers"
  , "Sokoto"
  , "Taraba"
  , "Yobe"
  , "Zamfara"
  ]
