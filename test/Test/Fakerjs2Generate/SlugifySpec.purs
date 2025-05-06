module Test.Fakerjs2Generate.SlugifySpec where

import Prelude

import Fakerjs2.Helpers.Slugify (slugify)
import Test.Spec (Spec, it)
import Test.Spec.Assertions (shouldEqual)

spec :: Spec Unit
spec = do
  it "returns empty string for empty input" $ slugify "" `shouldEqual` ""
  it "replaces spaces with hyphens" $ slugify "hello world" `shouldEqual` "hello-world"
  it "removes punctuation" $ slugify "hello, world!" `shouldEqual` "hello-world"
  it "preserves dashes and dots" $ slugify "hello-world.test" `shouldEqual` "hello-world.test"
  -- 'é' becomes 'e' after NFKD normalization and removing combining mark
  it "removes accents and combining marks" $ slugify "Café Été" `shouldEqual` "Cafe-Ete"
