module Fakerjs2.Locales.En.Commerce.Department (department) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

department = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Automotive"
  , "Baby"
  , "Beauty"
  , "Books"
  , "Clothing"
  , "Computers"
  , "Electronics"
  , "Games"
  , "Garden"
  , "Grocery"
  , "Health"
  , "Home"
  , "Industrial"
  , "Jewelry"
  , "Kids"
  , "Movies"
  , "Music"
  , "Outdoors"
  , "Shoes"
  , "Sports"
  , "Tools"
  , "Toys"
  ]
