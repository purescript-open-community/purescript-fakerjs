module Fakerjs2.Helpers.FromRegExp.Generate where

import Prelude

import Control.Monad.Gen (class MonadGen)
import Control.Monad.Gen as MonadGen
import Data.Array (concat)
import Data.Array.NonEmpty (NonEmptyArray)
import Data.Array.NonEmpty as NonEmptyArray
import Data.Bifunctor (bimap)
import Data.Char (toCharCode)
import Data.Enum (toEnumWithDefaults)
import Data.Maybe (Maybe(..))
import Data.String.CodeUnits (fromCharArray)
import Data.Traversable (sequence, traverse)
import Data.Tuple (Tuple)
import Fakerjs2.Helpers.FromRegExp.Types (Atom(..), Quantifier(..), TypeSafePattern(..))
import Fakerjs2.Helpers.FromRegExp.Utils (allChars, allCharsInts, allInts, intToChar, toLowerChar, toUpperChar, withoutRangesNE)
import Test.QuickCheck.Gen (Gen, elements, vectorOf)

-- | Generates characters for a single atom
-- | Input: Range 'a' 'z'
-- | Output: single random character between 'a' and 'z'
mkAtomGenerator :: Atom -> Maybe (Gen Char)
mkAtomGenerator = case _ of
  DecimalLit i -> Just $ pure (intToChar i)
  DecimalRange lo hi -> Just $ intToChar <$> MonadGen.chooseInt lo hi
  DecimalWildcard -> Just $ intToChar <$> elements allInts
  DecimalNotIn xs -> map (\nea -> intToChar <$> elements nea) $ NonEmptyArray.fromArray $ NonEmptyArray.difference allInts xs
  DecimalNotInRange ranges -> map (\nea -> intToChar <$> elements nea) $ NonEmptyArray.fromArray $ withoutRangesNE ranges allInts
  Lit c -> Just $ pure c
  Range start end -> Just $ toEnumWithDefaults bottom top <$> MonadGen.chooseInt (toCharCode start :: Int) (toCharCode end :: Int)
  Wildcard -> Just $ elements allChars
  NotIn xs -> map elements $ NonEmptyArray.fromArray $ NonEmptyArray.difference allChars xs
  NotInRange ranges ->
    let
      rangeCodes = map (bimap toCharCode toCharCode) ranges :: NonEmptyArray (Tuple Int Int)
      validCodes = withoutRangesNE rangeCodes allCharsInts :: Array Int
    in
      map (\validCodesNEArray -> toEnumWithDefaults bottom top <$> elements validCodesNEArray) $ NonEmptyArray.fromArray validCodes

-- same as https://github.com/faker-js/faker/blob/54fd5519e92270926e75a914ccf98b4699fbb4f2/src/modules/helpers/index.ts#L40
-- Example 1: Input 0
--   0 - 50%
--   1 - 25%
--   2 - 12.5%
-- Example 1: Input 1
--   0 - 0%
--   1 - 50%
--   2 - 25%
--   3 - 12.5%
chooseIntExponential :: forall m. MonadGen m => Int -> m Int
chooseIntExponential minVal = go minVal
  where
  go maxVal = do
    falseIsDontIncreaseMaxVal <- MonadGen.chooseBool
    if falseIsDontIncreaseMaxVal then go (maxVal * 2) else MonadGen.chooseInt minVal maxVal

-- | Applies a quantifier to generate repeated characters
-- | Input: NonEmptyArray ['a'], Exactly 3
-- | Output: NonEmptyArray ['a', 'a', 'a']
-- applyQuantifier :: forall a. a -> Quantifier -> Gen (Array a)
-- applyQuantifier char = case _ of
--   Once -> pure [ char ]
--   Exactly n -> pure $ Array.replicate n char
--   Between lo hi -> MonadGen.chooseInt lo hi >>= \n -> pure $ Array.replicate n char
--   ZeroOrMore -> chooseIntExponential 0 >>= \n -> pure $ Array.replicate n char
--   OneOrMore -> chooseIntExponential 1 >>= \n -> pure $ Array.replicate n char
--   Optional -> MonadGen.chooseBool >>= if _ then pure [ char ] else pure []

execGeneratorQuantifierTimes :: forall a. Gen a -> Quantifier -> Gen (Array a)
execGeneratorQuantifierTimes gen = case _ of
  Once -> gen <#> \x -> [ x ]
  Exactly n -> vectorOf n gen
  Between lo hi -> MonadGen.chooseInt lo hi >>= \n -> vectorOf n gen
  ZeroOrMore -> chooseIntExponential 0 >>= \n -> vectorOf n gen
  OneOrMore -> chooseIntExponential 1 >>= \n -> vectorOf n gen
  Optional -> MonadGen.chooseBool >>= if _ then gen <#> \x -> [ x ] else pure []

makeGeneratorCaseInsensitive :: Gen Char -> Gen Char
makeGeneratorCaseInsensitive genChar = do
  char :: Char <- genChar
  MonadGen.chooseBool >>= \b -> pure $ if b then toLowerChar char else toUpperChar char

-- `Nothing` signals that pattern was invalid somewhere - for example `NotIn 0 infinity` excluded all characters
genPattern :: Boolean -> TypeSafePattern -> Maybe (Gen (Array Char))
genPattern caseSensitive = case _ of
  PAtom atom quantifier -> map (workWithSuccess_PAtom quantifier) (mkAtomGenerator atom)
  PGroup arrayOfTypeSafePatterns quantifier -> map (workWithSuccess_PGroup quantifier) $ traverse (genPattern caseSensitive) (NonEmptyArray.toArray arrayOfTypeSafePatterns)
  where
  workWithSuccess_PAtom :: _ -> Gen Char -> _
  workWithSuccess_PAtom quantifier genChar = do
    let genChar' = if caseSensitive then genChar else makeGeneratorCaseInsensitive genChar
    execGeneratorQuantifierTimes genChar' quantifier :: Gen (Array Char)

  workWithSuccess_PGroup :: _ -> Array (Gen (Array Char)) -> _
  workWithSuccess_PGroup quantifier arrayOfGens = do
    let
      generateGroupOnce :: Gen (Array Char)
      generateGroupOnce = map join $ sequence arrayOfGens
    -- Repeat the group according to the quantifier
    execGeneratorQuantifierTimes generateGroupOnce quantifier <#> join

-- | Generates a string matching the given pattern
-- | Input: { caseSensitive: true }, [PAtom (Lit 'a') (Exactly 3)]
-- | Output: NonEmptyString "aaa"
-- same as https://github.com/faker-js/faker/blob/54fd5519e92270926e75a914ccf98b4699fbb4f2/src/modules/helpers/index.ts#L368
generate :: { caseSensitive :: Boolean } -> NonEmptyArray TypeSafePattern -> Maybe (Gen String)
generate { caseSensitive } patterns = map workWithSuccess (traverse (genPattern caseSensitive) patterns)
  where
  workWithSuccess :: NonEmptyArray (Gen (Array Char)) -> Gen String
  workWithSuccess = NonEmptyArray.toArray >>> \arrayOfGens -> do
    x :: Array (Array Char) <- sequence arrayOfGens
    pure $ fromCharArray $ concat x
