module Fakerjs2.Locales.ZhCn.Food.DishPattern (dish_pattern) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

dish_pattern = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "{{food.adjective}}{{food.ethnic_category}}风味炖菜"
  , "{{food.adjective}}{{food.meat}}配{{food.vegetable}}"
  , "{{food.ethnic_category}}{{food.vegetable}}炒{{food.meat}}"
  , "{{food.ethnic_category}}{{food.vegetable}}炖{{food.vegetable}}"
  , "{{food.ethnic_category}}风味{{food.ingredient}}汤"
  , "{{food.fruit}}与{{food.fruit}}水果塔"
  , "{{food.fruit}}派"
  , "{{food.fruit}}酱烤{{food.meat}}串"
  , "{{food.fruit}}风味{{food.meat}}烤肉"
  , "{{food.ingredient}}与{{food.meat}}馅饼"
  , "{{food.meat}}串"
  , "{{food.meat}}配{{food.fruit}}酱"
  , "{{food.spice}}腌制{{food.meat}}"
  , "{{food.spice}}香料包裹的{{food.meat}}"
  , "{{food.vegetable}}沙拉"
  , "{{food.vegetable}}炒{{food.meat}}"
  ]
