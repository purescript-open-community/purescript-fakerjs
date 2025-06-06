module Fakerjs2.Locales.ZhCn.Commerce.ProductName (adjective, material, product) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

adjective = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "不可思议的"
  , "东方的"
  , "人体工程学的"
  , "优雅的"
  , "华丽的"
  , "回收的"
  , "圆滑的"
  , "好吃"
  , "定制的"
  , "实用的"
  , "小的"
  , "已许可的"
  , "手工制作的"
  , "手工的"
  , "无品牌的"
  , "智能的"
  , "现代的"
  , "电子的"
  , "精彩绝伦的"
  , "精致的"
  , "豪华的"
  , "质朴的"
  , "贼好用的"
  , "通用的"
  ]

material = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "冷冻", "塑料", "新鲜", "木制", "棉花", "橡胶", "混凝土", "花岗岩", "软", "金属", "钢", "青铜" ]

product = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "培根"
  , "奶酪"
  , "帽子"
  , "手套"
  , "披萨"
  , "桌子"
  , "椅子"
  , "毛巾"
  , "汽车"
  , "沙拉"
  , "球"
  , "电脑"
  , "肥皂"
  , "自行车"
  , "薯条"
  , "衬衫"
  , "裤子"
  , "金枪鱼"
  , "键盘"
  , "鞋子"
  , "香肠"
  , "鱼肉"
  , "鸡肉"
  , "鼠标"
  ]
