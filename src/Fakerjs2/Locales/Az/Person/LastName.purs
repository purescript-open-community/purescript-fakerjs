module Fakerjs2.Locales.Az.Person.LastName (female, generic, male) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

female = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Abdullayeva"
  , "Qasımova"
  , "Rəşidova"
  , "Seyidova"
  , "Soltanova"
  , "Tahirova"
  , "Vəsiyeva"
  , "Əfəndiyeva"
  , "Əliyeva"
  , "Ələkbərova"
  ]

generic = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Abdullayeva"
  , "Məmmədov"
  , "Nəzərov"
  , "Qasımova"
  , "Quliyev"
  , "Rəhimov"
  , "Rəşidova"
  , "Seyidova"
  , "Soltanov"
  , "Soltanova"
  , "Tahirova"
  , "Vəliyev"
  , "Vəsiyeva"
  , "Xəlilov"
  , "Əfəndiyeva"
  , "Əhmədov"
  , "Əliyev"
  , "Əliyeva"
  , "Ələkbərov"
  , "Ələkbərova"
  ]

male = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Məmmədov"
  , "Nəzərov"
  , "Quliyev"
  , "Rəhimov"
  , "Soltanov"
  , "Vəliyev"
  , "Xəlilov"
  , "Əhmədov"
  , "Əliyev"
  , "Ələkbərov"
  ]
