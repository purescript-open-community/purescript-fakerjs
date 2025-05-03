module Fakerjs2.Locales.Fr.Finance.AccountType (account_type) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (AccountType)
import Unsafe.Coerce (unsafeCoerce)

account_type :: AccountType
account_type = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Carte de crédit"
  , "Chèque"
  , "Epargne"
  , "Investissement"
  , "Marché monétaire"
  , "Prêt immobilier"
  , "Prêt personnel"
  ]
