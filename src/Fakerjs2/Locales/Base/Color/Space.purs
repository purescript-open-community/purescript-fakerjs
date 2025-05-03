module Fakerjs2.Locales.Base.Color.Space (space) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (Space)
import Unsafe.Coerce (unsafeCoerce)

space :: Space
space = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Academy Color Encoding System (ACES)"
  , "Adobe RGB"
  , "Adobe Wide Gamut RGB"
  , "British Standard Colour (BS)"
  , "CIE 1931 XYZ"
  , "CIELAB"
  , "CIELUV"
  , "CIEUVW"
  , "CMY"
  , "CMYK"
  , "DCI-P3"
  , "Display-P3"
  , "Federal Standard 595C"
  , "HKS"
  , "HSL"
  , "HSLA"
  , "HSLuv"
  , "HSV"
  , "HWB"
  , "LCh"
  , "LMS"
  , "Munsell Color System"
  , "Natural Color System (NSC)"
  , "Pantone Matching System (PMS)"
  , "ProPhoto RGB Color Space"
  , "RAL"
  , "RG"
  , "RGBA"
  , "RGK"
  , "Rec. 2020"
  , "Rec. 2100"
  , "Rec. 601"
  , "Rec. 709"
  , "Uniform Color Spaces (UCSs)"
  , "YDbDr"
  , "YIQ"
  , "YPbPr"
  , "sRGB"
  , "sYCC"
  , "scRGB"
  , "xvYCC"
  ]
