module Fakerjs2.Locales.En.Commerce.ProductName (adjective, material, product) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (ProductNameAdjective, ProductNameMaterial, ProductNameProduct)
import Unsafe.Coerce (unsafeCoerce)

adjective :: ProductNameAdjective
adjective = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Awesome"
  , "Bespoke"
  , "Electronic"
  , "Elegant"
  , "Ergonomic"
  , "Fantastic"
  , "Fresh"
  , "Frozen"
  , "Generic"
  , "Gorgeous"
  , "Handcrafted"
  , "Handmade"
  , "Incredible"
  , "Intelligent"
  , "Licensed"
  , "Luxurious"
  , "Modern"
  , "Oriental"
  , "Practical"
  , "Recycled"
  , "Refined"
  , "Rustic"
  , "Sleek"
  , "Small"
  , "Soft"
  , "Tasty"
  , "Unbranded"
  ]

material :: ProductNameMaterial
material = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Aluminum"
  , "Bamboo"
  , "Bronze"
  , "Ceramic"
  , "Concrete"
  , "Cotton"
  , "Gold"
  , "Granite"
  , "Marble"
  , "Metal"
  , "Plastic"
  , "Rubber"
  , "Silk"
  , "Steel"
  , "Wooden"
  ]

product :: ProductNameProduct
product = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Bacon"
  , "Ball"
  , "Bike"
  , "Car"
  , "Chair"
  , "Cheese"
  , "Chicken"
  , "Chips"
  , "Computer"
  , "Fish"
  , "Gloves"
  , "Hat"
  , "Keyboard"
  , "Mouse"
  , "Pants"
  , "Pizza"
  , "Salad"
  , "Sausages"
  , "Shirt"
  , "Shoes"
  , "Soap"
  , "Table"
  , "Towels"
  , "Tuna"
  ]
