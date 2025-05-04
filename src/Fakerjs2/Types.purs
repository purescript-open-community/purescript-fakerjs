module Fakerjs2.Types where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Map (Map)
import Data.String.NonEmpty (NonEmptyString)

type Weighted a = { value :: a, weight :: Int }
-- import Fakerjs2Generate.JavascriptBetter.Decode
