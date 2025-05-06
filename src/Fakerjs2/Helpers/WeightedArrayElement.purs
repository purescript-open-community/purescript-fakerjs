module Fakerjs2.Helpers.WeightedArrayElement where

import Control.Monad.Gen (class MonadGen)
import Prelude
import Control.Monad.Gen as Gen
import Data.Array.NonEmpty (NonEmptyArray)
import Data.Array.NonEmpty as NEA
import Data.Foldable (sum)
import Data.Maybe (Maybe, fromJust)
import Fakerjs2.PositiveNonZeroInt (PositiveNonZeroInt, mkPositiveNonZeroInt, unPositiveNonZeroInt, unsafePositiveNonZeroInt)
import Partial.Unsafe (unsafePartial)

-- | Type representing a weighted element
type Weighted a = { weight :: PositiveNonZeroInt, value :: a }

-- | Selects a random element from a weighted array using the Gen monad
weightedArrayElement :: forall a m. MonadGen m => NonEmptyArray (Weighted a) -> m a
weightedArrayElement array = do
  let
    -- Calculate total weight by unwrapping each PositiveNonZeroInt
    totalWeight = sum $ map (unPositiveNonZeroInt <<< _.weight) array

  -- Generate random number between 0 and (totalWeight - 1)
  random <- Gen.chooseInt 0 (totalWeight - 1)

  pure $ findElement random array

findElement :: forall a. Int -> NonEmptyArray (Weighted a) -> a
findElement remainingWeight arr =
  case NEA.uncons arr of
    { head, tail: [] } -> head.value -- Last element
    { head, tail } ->
      let
        currentWeight = unPositiveNonZeroInt head.weight
      in
        if remainingWeight < currentWeight then head.value
        else findElement (remainingWeight - currentWeight) (unsafePartial $ fromJust $ NEA.fromArray tail)

-- | Create a weighted array element from a value and weight
weighted :: forall a. a -> Int -> Maybe (Weighted a)
weighted value int = mkPositiveNonZeroInt int <#> { weight: _, value }

-- | Unsafe version that assumes the weight is valid
unsafeWeighted :: forall a. Int -> a -> Weighted a
unsafeWeighted weight value = { weight: unsafePositiveNonZeroInt weight, value }
