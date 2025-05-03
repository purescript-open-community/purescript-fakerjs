module Fakerjs2.Locales.En.Person.BioPart (bio_part) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (BioPart)
import Unsafe.Coerce (unsafeCoerce)

bio_part :: BioPart
bio_part = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "activist"
  , "artist"
  , "author"
  , "blogger"
  , "business owner"
  , "coach"
  , "creator"
  , "designer"
  , "developer"
  , "dreamer"
  , "educator"
  , "engineer"
  , "entrepreneur"
  , "environmentalist"
  , "film lover"
  , "filmmaker"
  , "foodie"
  , "founder"
  , "friend"
  , "gamer"
  , "geek"
  , "grad"
  , "inventor"
  , "leader"
  , "model"
  , "musician"
  , "nerd"
  , "parent"
  , "patriot"
  , "person"
  , "philosopher"
  , "photographer"
  , "public speaker"
  , "scientist"
  , "singer"
  , "streamer"
  , "student"
  , "teacher"
  , "traveler"
  , "veteran"
  , "writer"
  ]
