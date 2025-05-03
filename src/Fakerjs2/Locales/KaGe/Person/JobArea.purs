module Fakerjs2.Locales.KaGe.Person.JobArea (job_area) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (JobArea)
import Unsafe.Coerce (unsafeCoerce)

job_area :: JobArea
job_area = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "აღრიცხვების"
  , "ბრენდინგის"
  , "ბრენიდს"
  , "ბუღალტერიის"
  , "განყოფილების"
  , "გაყიდვების"
  , "გუნდის"
  , "დახმარების"
  , "დიზაინის"
  , "თავდაცვის"
  , "ინფორმაციის"
  , "კვლევების"
  , "კომუნიკაციების"
  , "მარკეტინგის"
  , "ოპერაციათა"
  , "ოპტიმიზაციების"
  , "პიარ"
  , "პროგრამის"
  , "საქმეთა"
  , "ტაქტიკური"
  , "უსაფრთხოების"
  , "ფინანსთა"
  , "ქსელის"
  , "ხარისხის"
  , "ჯგუფის"
  ]
