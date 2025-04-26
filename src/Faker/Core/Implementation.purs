module Faker.Core.Implementation where

import Faker.Core.Types

foreign import makeFakerImpl :: Fn2 (NonEmptyArray FakerLocale) (Nullable Int) Faker
