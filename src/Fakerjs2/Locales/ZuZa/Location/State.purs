module Fakerjs2.Locales.ZuZa.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (State)
import Unsafe.Coerce (unsafeCoerce)

state :: State
state = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "EGoli"
  , "IFuleyisitata"
  , "IKwaZulu-Natali"
  , "ILimpopo"
  , "IMpumalanga Kapa"
  , "IMpumalanga"
  , "INtshonalanga Kapa"
  , "INyakatho Kapa"
  , "INyakatho-Ntshonalanga"
  ]
