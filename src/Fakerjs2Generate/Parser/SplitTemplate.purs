module Fakerjs2Generate.Parser.SplitTemplate where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Either (Either(..))
import Data.Function.Uncurried (Fn3, runFn3)
import Data.String.NonEmpty (NonEmptyString)

foreign import splitTemplateCallsImpl
  :: Fn3
       (NonEmptyString -> Either NonEmptyString NonEmptyString) -- Left constructor
       (NonEmptyString -> Either NonEmptyString NonEmptyString) -- Right constructor
       NonEmptyString -- Input
       (NonEmptyArray (Either NonEmptyString NonEmptyString)) -- Result

splitTemplateCalls :: NonEmptyString -> NonEmptyArray (Either NonEmptyString NonEmptyString)
splitTemplateCalls = runFn3 splitTemplateCallsImpl Left Right
