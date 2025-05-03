module Test.Tests.Luhn
  ( spec
  ) where

import Fakerjs2.Helpers.Luhn (validate)
import Prelude

import Data.Maybe (fromJust)
import Fakerjs2.Helpers.Luhl.Utils (stringToDigitArray)
import Partial.Unsafe (unsafePartial)
import Test.Spec (Spec, describe, it)
import Test.Spec.Assertions (shouldEqual)

mkTest :: String -> Boolean -> Spec Unit
mkTest arr expected = it (arr <> " is " <> show expected) $ validate (unsafePartial $ fromJust $ stringToDigitArray arr) `shouldEqual` expected

spec :: Spec Unit
spec = do
  describe "Luhn.validate" do
    mkTest "" true
    mkTest "49927398716" true
    mkTest "49927398717" false
    mkTest "1230" true
    mkTest "1234" false
    mkTest "79927398713" true
    mkTest "4556789056789323" false
    mkTest "4556789056789321" false
