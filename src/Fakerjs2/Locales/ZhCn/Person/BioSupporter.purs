module Fakerjs2.Locales.ZhCn.Person.BioSupporter (bio_supporter) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (BioSupporter)
import Unsafe.Coerce (unsafeCoerce)

bio_supporter :: BioSupporter
bio_supporter = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "倡导者", "贡献者", "发烧友", "粉丝", "狂热者", "爱好者", "支持者" ]
