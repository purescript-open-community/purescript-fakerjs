module Test.Fakerjs2Generate.WeightedArrayElementSpec where

import Prelude

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Array.NonEmpty as NEA
import Data.Foldable (foldl)
import Data.Int (toNumber)
import Data.Map (Map)
import Data.Map as Map
import Data.Maybe (fromJust, maybe)
import Debug (traceM)
import Effect.Aff (Aff)
import Fakerjs2.Helpers.WeightedArrayElement (Weighted, unsafeWeighted, weighted, weightedArrayElement)
import Partial.Unsafe (unsafePartial)
import Random.LCG (mkSeed)
import Test.QuickCheck (Seed)
import Test.QuickCheck.Gen (Gen, vectorOf, evalGen)
import Test.Spec (Spec, describe, it)
import Test.Spec.Assertions (shouldSatisfy)

spec :: Spec Unit
spec = describe "weightedArrayElement" do
  it "respects weights in selection probability" do
    let
      (array :: NonEmptyArray (Weighted String)) = NEA.cons'
        (unsafeWeighted 5 "a")
        [ unsafeWeighted 3 "b"
        , unsafeWeighted 1 "c"
        ]
      repetitions = 1000
      gen = weightedArrayElement array
      (values :: Array String) = evalGen (vectorOf repetitions gen) { newSeed: mkSeed 42, size: 10 }
      (freqs :: Map String Int) = foldl (\m x -> Map.insertWith (+) x 1 m) Map.empty values
      (total :: Number) = toNumber repetitions
      (relFreqs :: Map String Number) = map (\a -> toNumber a / total) freqs
      get s = unsafePartial $ fromJust $ Map.lookup s relFreqs
    -- Expect frequency of "a" > "b" > "c" for weights 5 > 3 > 1
    shouldSatisfy (get "a") (_ > 0.4)
    shouldSatisfy (get "b") (_ > 0.2)
    shouldSatisfy (get "c") (_ < 0.2)
