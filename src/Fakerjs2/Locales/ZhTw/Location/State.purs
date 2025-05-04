module Fakerjs2.Locales.ZhTw.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Unsafe.Coerce (unsafeCoerce)

state = (unsafeCoerce :: Array String -> NonEmptyArray String) [ "福建省", "台灣省" ]
