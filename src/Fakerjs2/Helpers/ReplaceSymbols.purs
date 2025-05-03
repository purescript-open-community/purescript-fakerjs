module Fakerjs2.Helpers.ReplaceSymbols where

import Prelude

import Control.Monad.Gen.Class (class MonadGen, chooseBool)
import Data.Char.Gen (genAlphaUppercase, genDigitChar)
import Data.String.CodeUnits (fromCharArray, toCharArray)
import Data.Traversable (traverse)

-- Replace symbols with characters
-- same as https://github.com/faker-js/faker/blob/54fd5519e92270926e75a914ccf98b4699fbb4f2/src/modules/helpers/index.ts#L244
-- - `#` will be replaced with a digit (`0` - `9`).
-- - `?` will be replaced with an upper letter ('A' - 'Z')
-- - and `*` will be replaced with either a digit or letter.
--
-- @param string The template string to parse. Defaults to `''`.
--
-- @example
-- replaceSymbols "" => ""
-- replaceSymbols "#####" => "98441"
-- replaceSymbols "?????" => "ZYRQQ"
-- replaceSymbols "*****" => "4Z3P7"
-- replaceSymbols "Your pin is: #?*#?*" => "Your pin is: 0T85L1"
replaceSymbols :: forall m. MonadGen m => String -> m String
replaceSymbols = map fromCharArray <<< traverse replaceChar <<< toCharArray
  where
  replaceChar :: Char -> m Char
  replaceChar = case _ of
    '#' -> genDigitChar
    '?' -> genAlphaUppercase
    '*' -> chooseBool >>= if _ then genAlphaUppercase else genDigitChar
    c -> pure c
