module Fakerjs2.Locales.ZhCn.Book.Genre (genre) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

genre = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "传记"
  , "侦探"
  , "儿童文学"
  , "历史"
  , "哲学"
  , "商业"
  , "喜剧"
  , "回忆录"
  , "图像小说"
  , "奇幻"
  , "宗教"
  , "心理学"
  , "恐怖"
  , "悬疑"
  , "惊悚"
  , "戏剧"
  , "旅行"
  , "漫画"
  , "爱情"
  , "神话"
  , "科幻"
  , "经典"
  , "诗歌"
  , "青少年文学"
  ]
