module Test.Tests.SplitTemplate where

import Prelude

import Data.Array.NonEmpty as NonEmptyArray
import Data.Bifunctor (lmap, rmap)
import Data.Either (Either(..))
import Data.Maybe (fromJust)
import Data.String.NonEmpty as NonEmptyString
import Partial.Unsafe (unsafePartial)
import Test.Spec (Spec, it)
import Test.Spec.Assertions (shouldEqual)
import Fakerjs2Generate.Parser.SplitTemplate (splitTemplateCalls)

mkTest :: String -> Array (Either String String) -> Spec Unit
mkTest input expected = it (show input) do
  let fs = unsafePartial $ NonEmptyString.unsafeFromString
  let input' = fs input
  let expected' = unsafePartial $ fromJust $ NonEmptyArray.fromArray $ map (rmap fs <<< lmap fs) $ expected
  splitTemplateCalls input' `shouldEqual` expected'

spec ∷ Spec Unit
spec = do
  mkTest "" [ Left "Test" ]
  mkTest """Test""" [ Left "Test" ]
  mkTest """{{number.int({"min":1,"max":9})}}""" [ Right """number.int({"min":1,"max":9})""" ]
  mkTest """Test{{number.int({"min":1,"max":9})}}""" [ Left "Test", Right """number.int({"min":1,"max":9})""" ]
  mkTest """Test{{number.int({"min":1,"max":9})}}Test""" [ Left "Test", Right """number.int({"min":1,"max":9})""", Left "Test" ]
  mkTest """Test{{number.int({"min":1,"max":9})}}Test{{Other}}""" [ Left "Test", Right """number.int({"min":1,"max":9})""", Left "Test", Right """Other""" ]
  mkTest """Test{{number.int({"min":1,"max":9})}}Test{{Other}}}""" [ Left "Test", Right """number.int({"min":1,"max":9})""", Left "Test", Right """Other""", Left "}" ]
  mkTest """Test{{number.int({"min":1,"max":9})}}Test{Other}}""" [ Left "Test", Right """number.int({"min":1,"max":9})""", Left "Test{Other}}" ]
  mkTest """Test{{number.int({"min":1,"max":9})}}Test{Other}""" [ Left "Test", Right """number.int({"min":1,"max":9})""", Left "Test{Other}" ]
  mkTest """Test{{number.int({"min":1,"max":9})}}Test{{Other}""" [ Left "Test", Right """number.int({"min":1,"max":9})""", Left "Test{{Other}" ]
  mkTest """Test{{{{number.int({"min":1,"max":9})}}}}Test{{Other}""" [ Left "Test", Right """{{number.int({"min":1,"max":9})""", Left "}}Test{{Other}" ] -- Hm
