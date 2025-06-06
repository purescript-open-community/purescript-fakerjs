module Fakerjs2.Locales.En.Food.DishPattern (dish_pattern) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

dish_pattern = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "{{food.adjective}} {{food.ethnic_category}} stew"
  , "{{food.adjective}} {{food.meat}} with {{food.vegetable}}"
  , "{{food.ethnic_category}} {{food.ingredient}} soup"
  , "{{food.fruit}} and {{food.fruit}} tart"
  , "{{food.fruit}} pie"
  , "{{food.fruit}}-glazed {{food.meat}} skewers"
  , "{{food.fruit}}-infused {{food.meat}} roast"
  , "{{food.ingredient}} and {{food.meat}} pie"
  , "{{food.ingredient}}-infused {{food.meat}}"
  , "{{food.meat}} steak"
  , "{{food.meat}} with {{food.fruit}} sauce"
  , "{{food.spice}}-crusted {{food.meat}}"
  , "{{food.spice}}-rubbed {{food.meat}} salad"
  , "{{food.vegetable}} salad"
  , "{{person.first_name.generic}}'s special {{food.ingredient}}"
  ]
