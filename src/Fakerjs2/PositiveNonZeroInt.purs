module Fakerjs2.PositiveNonZeroInt (PositiveNonZeroInt, mkPositiveNonZeroInt, unPositiveNonZeroInt, unsafePositiveNonZeroInt) where

import Prelude

import Data.Maybe (Maybe(..))
import Partial.Unsafe (unsafeCrashWith)

-- | A newtype for positive non-zero integers
newtype PositiveNonZeroInt = PositiveNonZeroInt Int

-- | Smart constructor for PositiveNonZeroInt
mkPositiveNonZeroInt :: Int -> Maybe PositiveNonZeroInt
mkPositiveNonZeroInt n
  | n > 0 = Just (PositiveNonZeroInt n)
  | otherwise = Nothing

-- | Unwrap a PositiveNonZeroInt to get the Int value
unPositiveNonZeroInt :: PositiveNonZeroInt -> Int
unPositiveNonZeroInt (PositiveNonZeroInt n) = n

-- | Unsafe version that assumes the input is valid
unsafePositiveNonZeroInt :: Int -> PositiveNonZeroInt
unsafePositiveNonZeroInt n
  | n > 0 = PositiveNonZeroInt n
  | otherwise = unsafeCrashWith $ "PositiveNonZeroInt: expected n > 0, but got " <> show n
