module Fakerjs2.Locales.ZhCn.Company.LegalEntityType (legal_entity_type) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

legal_entity_type = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "无限公司", "无限责任公司", "有限公司", "有限责任公司", "股份有限公司", "集团有限公司", "（集团）有限公司" ]
