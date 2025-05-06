module Fakerjs2.Helpers.Slugify (slugify) where

import Prelude

import Data.String.Regex (replace)
import Data.String.Regex.Flags (global)
import Data.String.Regex.Unsafe (unsafeRegex)
import Data.String.Utils (NormalizationForm(..), normalize')

slugify :: String -> String
slugify input =
  input
    # normalize' NFKD
    # replace (unsafeRegex """[\u0300-\u036F]""" global) ""
    # replace (unsafeRegex " " global) "-"
    # replace (unsafeRegex """[^\w.-]+""" global) ""
