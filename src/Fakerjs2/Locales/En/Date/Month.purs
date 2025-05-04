module Fakerjs2.Locales.En.Date.Month (month) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

month =
  { abbr: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "Apr", "Aug", "Dec", "Feb", "Jan", "Jul", "Jun", "Mar", "May", "Nov", "Oct", "Sep" ]
  , wide: (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
      [ "April"
      , "August"
      , "December"
      , "February"
      , "January"
      , "July"
      , "June"
      , "March"
      , "May"
      , "November"
      , "October"
      , "September"
      ]
  }
