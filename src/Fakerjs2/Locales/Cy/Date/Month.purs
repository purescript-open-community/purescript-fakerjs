module Fakerjs2.Locales.Cy.Date.Month (abbr, wide) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (MonthAbbr, MonthWide)
import Unsafe.Coerce (unsafeCoerce)

abbr :: MonthAbbr
abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Aws", "Chwef", "Ebr", "Gorff", "Hyd", "Ion", "Mai", "Maw", "Medi", "Meh", "Rhag", "Tach" ]

wide :: MonthWide
wide = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Awst"
  , "Chwefror"
  , "Ebrill"
  , "Gorffennaf"
  , "Hydref"
  , "Ionawr"
  , "Mai"
  , "Mawrth"
  , "Medi"
  , "Mehefin"
  , "Rhagfyr"
  , "Tachwedd"
  ]
