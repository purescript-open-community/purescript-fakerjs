module Fakerjs2.Locales.ZhCn.Food.DescriptionPattern (description_pattern) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

description_pattern = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "{{food.ingredient}}搭配一撮{{food.spice}}，上面放着焦糖化的{{food.fruit}}和一层鲜奶油。"
  , "{{food.meat}}牛排，外裹一层{{food.adjective}}的{{food.spice}}酥壳，配上{{food.spice}}味的捣碎{{food.vegetable}}。"
  , "一份经典的{{food.meat}}馅饼，搭配{{food.adjective}}的{{food.ingredient}}，外皮是{{food.adjective}}的酥皮，表面烘烤出诱人的金黄色。"
  , "一锅浓郁的{{food.adjective}}炖菜，带有{{food.ethnic_category}}风味，融合了{{food.adjective}}的肉类、{{food.adjective}}的蔬菜与一锅{{food.adjective}}、{{food.adjective}}的浓汤。"
  , "丰盛的炖菜，融合{{food.ingredient}}与{{food.meat}}，加入{{food.spice}}与{{food.vegetable}}慢炖成充满家常味的美食。"
  , "多汁的{{food.meat}}，按个人喜好烤制，淋上大胆的{{food.spice}}酱汁，旁边配有烤{{food.vegetable}}。"
  , "新鲜的什锦蔬菜沙拉，搭配{{food.spice}}腌制过的{{food.meat}}与清爽的{{food.vegetable}}。"
  , "温暖人心的{{food.ethnic_category}}风味汤，选用新鲜的{{food.ingredient}}和传统香料慢炖而成。"
  , "烘烤过的{{food.ingredient}}填入{{food.meat}}中，撒上{{food.spice}}与{{food.adjective}}的香草，配以烤制的{{food.vegetable}}拼盘。"
  , "烤制的{{food.meat}}串，事先以{{food.ethnic_category}}香料腌制，配以新鲜的{{food.vegetable}}与{{food.fruit}}沙拉。"
  , "简单的{{food.fruit}}派。没有花哨的装饰。就是派。"
  , "精致的{{food.meat}}烤肉，注入{{food.fruit}}的香气，慢火烘烤至完美，佐以浓郁奶香的{{food.vegetable}}泥。"
  , "这是一道迷人的咸甜塔，融合了{{food.adjective}}的{{food.vegetable}}与香甜的{{food.fruit}}，搭配奶香浓郁的酥皮，点缀上一点{{food.spice}}。"
  , "酥脆炸{{food.meat}}块，撒上{{food.spice}}，搭配酸甜的{{food.fruit}}蘸酱。"
  ]
