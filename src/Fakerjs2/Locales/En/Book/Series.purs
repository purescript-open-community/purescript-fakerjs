module Fakerjs2.Locales.En.Book.Series (series) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Series)
import Unsafe.Coerce (unsafeCoerce)

series :: Series
series = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "A Song of Ice and Fire"
  , "Anna Karenina"
  , "Colonel Race"
  , "Discworld"
  , "Dune"
  , "Harry Potter"
  , "Hercule Poirot"
  , "His Dark Materials"
  , "Jane Austen Murder Mysteries"
  , "Little Women"
  , "Outlander"
  , "Percy Jackson"
  , "Sherlock Holmes"
  , "The Arc of a Scythe"
  , "The Bartimaeus Trilogy"
  , "The Border Trilogy"
  , "The Chronicles of Narnia"
  , "The Dark Tower"
  , "The Dresden Files"
  , "The Eighth Life"
  , "The Foundation Series"
  , "The Hitchhiker's Guide to the Galaxy"
  , "The Hunger Games"
  , "The Infinity Cycle"
  , "The Inheritance Cycle"
  , "The Lord of the Rings"
  , "The Maze Runner"
  , "The Prison Healer"
  , "The Red Rising Saga"
  , "The Southern Reach"
  , "The Wheel of Time"
  , "Thursday Next Series"
  , "Twilight"
  , "War and Peace"
  ]
