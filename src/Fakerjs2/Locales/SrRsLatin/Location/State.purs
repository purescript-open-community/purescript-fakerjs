module Fakerjs2.Locales.SrRsLatin.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (State)
import Unsafe.Coerce (unsafeCoerce)

state :: State
state = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Borski okrug"
  , "Braničevski okrug"
  , "Grad Beograd"
  , "Zaječarski okrug"
  , "Zapadnobački okrug"
  , "Zlatiborski okrug"
  , "Jablanički okrug"
  , "Južnobanatski okrug"
  , "Južnobački okrug"
  , "Kolubarski okrug"
  , "Kosovski okrug"
  , "Kosovskomitrovački okrug"
  , "Kosovskopomoravski okrug"
  , "Mačvanski okrug"
  , "Moravički okrug"
  , "Nišavski okrug"
  , "Pećki okrug"
  , "Pirotski okrug"
  , "Podunavski okrug"
  , "Pomoravski okrug"
  , "Prizrenski okrug"
  , "Pčinjski okrug"
  , "Rasinski okrug"
  , "Raški okrug"
  , "Severnobanatski okrug"
  , "Severnobački okrug"
  , "Srednjobanatski okrug"
  , "Sremski okrug"
  , "Toplički okrug"
  , "Šumadijski okrug"
  ]
