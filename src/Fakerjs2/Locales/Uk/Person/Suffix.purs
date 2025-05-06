module Fakerjs2.Locales.Uk.Person.Suffix (suffix) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

suffix = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "проф."
  , "доц."
  , "докт. пед. наук"
  , "докт. політ. наук"
  , "докт. філол. наук"
  , "докт. філос. наук"
  , "докт. і. наук"
  , "докт. юрид. наук"
  , "докт. техн. наук"
  , "докт. психол. наук"
  , "канд. пед. наук"
  , "канд. політ. наук"
  , "канд. філол. наук"
  , "канд. філос. наук"
  , "канд. і. наук"
  , "канд. юрид. наук"
  , "канд. техн. наук"
  , "канд. психол. наук"
  ]
