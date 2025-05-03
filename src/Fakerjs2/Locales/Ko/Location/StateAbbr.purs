module Fakerjs2.Locales.Ko.Location.StateAbbr (state_abbr) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (StateAbbr)
import Unsafe.Coerce (unsafeCoerce)

state_abbr :: StateAbbr
state_abbr = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "강원"
  , "경기"
  , "경남"
  , "경북"
  , "광주"
  , "대구"
  , "대전"
  , "부산"
  , "서울"
  , "울산"
  , "인천"
  , "전남"
  , "전북"
  , "제주"
  , "충남"
  , "충북"
  , "세종"
  ]
