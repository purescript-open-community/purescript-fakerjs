module Fakerjs2.Locales.Hu.Finance.AccountType (account_type) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

account_type = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Befektetés"
  , "Fizetési"
  , "Gépjármű kölcsön"
  , "Hitelkártya"
  , "Lakáshitel"
  , "Megtakaritás"
  , "Money Market"
  , "Személyi kölcsön"
  ]
