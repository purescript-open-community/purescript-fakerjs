module Fakerjs2.Locales.CsCz.Person.LastNamePattern (female, male) where

import Data.String.NonEmpty (unsafeFromString)
import Fakerjs2.Types (LastNamePatternFemale, LastNamePatternMale)

female :: LastNamePatternFemale
female = [ { value: unsafeFromString "{{person.last_name.female}}", weight: 1 } ]

male :: LastNamePatternMale
male = [ { value: unsafeFromString "{{person.last_name.male}}", weight: 1 } ]
