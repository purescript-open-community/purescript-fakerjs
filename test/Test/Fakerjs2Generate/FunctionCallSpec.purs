module Test.Fakerjs2Generate.FunctionCallSpec where

import Prelude

import Fakerjs2Generate.Parser.FunctionCall (FunctionCall(..), parseFunctionCall)
import Test.Spec (Spec)
import Test.Util (mkParseTest, mkParseTestShouldFail)

mkTest :: String -> FunctionCall -> Spec Unit
mkTest = mkParseTest parseFunctionCall

mkTestShouldFail :: String -> String -> Spec Unit
mkTestShouldFail = mkParseTestShouldFail parseFunctionCall

spec ∷ Spec Unit
spec = do
  mkTest """abbreviation""" (FC_SimpleIdentifier "abbreviation")
  mkTest """adjective""" (FC_SimpleIdentifier "adjective")
  mkTest """ingverb""" (FC_SimpleIdentifier "ingverb")
  mkTest """verb""" (FC_SimpleIdentifier "verb")
  mkTest """noun""" (FC_SimpleIdentifier "noun")

  -----------------

  mkTest """animal.bird""" (FC_SimpleIdentifier2 "animal" "bird")
  mkTest """animal.type""" (FC_SimpleIdentifier2 "animal" "type")
  mkTest """cell_phone.common_cell_prefix""" (FC_SimpleIdentifier2 "cell_phone" "common_cell_prefix")
  mkTest """color.human""" (FC_SimpleIdentifier2 "color" "human")
  mkTest """commerce.department""" (FC_SimpleIdentifier2 "commerce" "department")
  mkTest """commerce.productAdjective""" (FC_SimpleIdentifier2 "commerce" "productAdjective")
  mkTest """commerce.productMaterial""" (FC_SimpleIdentifier2 "commerce" "productMaterial")
  mkTest """commerce.product""" (FC_SimpleIdentifier2 "commerce" "product")
  mkTest """company.adjective""" (FC_SimpleIdentifier2 "company" "adjective")
  mkTest """company.catchPhrase""" (FC_SimpleIdentifier2 "company" "catchPhrase")
  mkTest """company.category""" (FC_SimpleIdentifier2 "company" "category")
  mkTest """company.company_name""" (FC_SimpleIdentifier2 "company" "company_name")
  mkTest """company.legal_entity_type""" (FC_SimpleIdentifier2 "company" "legal_entity_type")
  mkTest """company.name""" (FC_SimpleIdentifier2 "company" "name")
  mkTest """company.noun""" (FC_SimpleIdentifier2 "company" "noun")
  mkTest """company.prefix""" (FC_SimpleIdentifier2 "company" "prefix")
  mkTest """company.suffix""" (FC_SimpleIdentifier2 "company" "suffix")
  mkTest """finance.amount""" (FC_SimpleIdentifier2 "finance" "amount")
  mkTest """finance.currencyCode""" (FC_SimpleIdentifier2 "finance" "currencyCode")
  mkTest """finance.transactionType""" (FC_SimpleIdentifier2 "finance" "transactionType")
  mkTest """food.adjective""" (FC_SimpleIdentifier2 "food" "adjective")
  mkTest """food.ethnic_category""" (FC_SimpleIdentifier2 "food" "ethnic_category")
  mkTest """food.fruit""" (FC_SimpleIdentifier2 "food" "fruit")
  mkTest """food.ingredient""" (FC_SimpleIdentifier2 "food" "ingredient")
  mkTest """food.meat""" (FC_SimpleIdentifier2 "food" "meat")
  mkTest """food.spice""" (FC_SimpleIdentifier2 "food" "spice")
  mkTest """food.vegetable""" (FC_SimpleIdentifier2 "food" "vegetable")
  mkTest """internet.emoji""" (FC_SimpleIdentifier2 "internet" "emoji")
  mkTest """location.buildingNumber""" (FC_SimpleIdentifier2 "location" "buildingNumber")
  mkTest """location.city_infix""" (FC_SimpleIdentifier2 "location" "city_infix")
  mkTest """location.city_name""" (FC_SimpleIdentifier2 "location" "city_name")
  mkTest """location.city_prefix""" (FC_SimpleIdentifier2 "location" "city_prefix")
  mkTest """location.city_suffix""" (FC_SimpleIdentifier2 "location" "city_suffix")
  mkTest """location.city""" (FC_SimpleIdentifier2 "location" "city")
  mkTest """location.common_street_suffix""" (FC_SimpleIdentifier2 "location" "common_street_suffix")
  mkTest """location.country""" (FC_SimpleIdentifier2 "location" "country")
  mkTest """location.secondaryAddress""" (FC_SimpleIdentifier2 "location" "secondaryAddress")
  mkTest """location.state""" (FC_SimpleIdentifier2 "location" "state")
  mkTest """location.street_cantonese_part""" (FC_SimpleIdentifier2 "location" "street_cantonese_part")
  mkTest """location.street_english_part""" (FC_SimpleIdentifier2 "location" "street_english_part")
  mkTest """location.street_name_part""" (FC_SimpleIdentifier2 "location" "street_name_part")
  mkTest """location.street_name""" (FC_SimpleIdentifier2 "location" "street_name")
  mkTest """location.street_prefix""" (FC_SimpleIdentifier2 "location" "street_prefix")
  mkTest """location.street_suffix""" (FC_SimpleIdentifier2 "location" "street_suffix")
  mkTest """location.street""" (FC_SimpleIdentifier2 "location" "street")
  mkTest """person.bio_part""" (FC_SimpleIdentifier2 "person" "bio_part")
  mkTest """person.bio_supporter""" (FC_SimpleIdentifier2 "person" "bio_supporter")
  mkTest """person.firstName""" (FC_SimpleIdentifier2 "person" "firstName")
  mkTest """person.jobArea""" (FC_SimpleIdentifier2 "person" "jobArea")
  mkTest """person.jobDescriptor""" (FC_SimpleIdentifier2 "person" "jobDescriptor")
  mkTest """person.jobType""" (FC_SimpleIdentifier2 "person" "jobType")
  mkTest """person.lastName""" (FC_SimpleIdentifier2 "person" "lastName")
  mkTest """person.middleName""" (FC_SimpleIdentifier2 "person" "middleName")
  mkTest """person.name""" (FC_SimpleIdentifier2 "person" "name")
  mkTest """person.prefix""" (FC_SimpleIdentifier2 "person" "prefix")
  mkTest """person.suffix""" (FC_SimpleIdentifier2 "person" "suffix")
  mkTest """system.semver""" (FC_SimpleIdentifier2 "system" "semver")
  mkTest """team.creature""" (FC_SimpleIdentifier2 "team" "creature")
  mkTest """team.prefix""" (FC_SimpleIdentifier2 "team" "prefix")
  mkTest """team.suffix""" (FC_SimpleIdentifier2 "team" "suffix")
  mkTest """word.adjective""" (FC_SimpleIdentifier2 "word" "adjective")
  mkTest """word.noun""" (FC_SimpleIdentifier2 "word" "noun")

  mkTest """person.first_name.female""" (FC_SimpleIdentifier3 "person" "first_name" "female")
  mkTest """person.first_name.generic""" (FC_SimpleIdentifier3 "person" "first_name" "generic")
  mkTest """person.first_name.male""" (FC_SimpleIdentifier3 "person" "first_name" "male")
  mkTest """person.last_name.female""" (FC_SimpleIdentifier3 "person" "last_name" "female")
  mkTest """person.last_name.generic""" (FC_SimpleIdentifier3 "person" "last_name" "generic")
  mkTest """person.last_name.male""" (FC_SimpleIdentifier3 "person" "last_name" "male")
  mkTest """science.chemical_element.name""" (FC_SimpleIdentifier3 "science" "chemical_element" "name")

  mkTest """number.int({"max": 9, "min": 1})""" (FC_Number_Int { max: 9, min: 1 })
  mkTest """number.int({"min":1,"max":9})""" (FC_Number_Int { max: 9, min: 1 })
  mkTest """number.int({"max": 99999, "min": 11111})""" (FC_Number_Int { max: 99999, min: 11111 })
  mkTest """number.int({"max": 99999, "min": 11111 })""" (FC_Number_Int { max: 99999, min: 11111 })
  mkTestShouldFail """number.int({"xxx":1,"max":9})"""
    """Expected EOF at position index:10 (line:1, column:11)
          ▼
number.int({"xxx":1,"max":9})"""

  mkTest """helpers.arrayElement([])""" (FC_Helpers_ArrayElement [])
  mkTest """helpers.arrayElement(["asdf"])""" (FC_Helpers_ArrayElement [ "asdf" ])
  mkTest """helpers.arrayElement(["5.1","5.2"])""" (FC_Helpers_ArrayElement [ "5.1", "5.2" ])
  mkTest """helpers.arrayElement(["SM-G998U","SM-G998B","SM-G998N","SM-G998P","SM-T800"])""" (FC_Helpers_ArrayElement [ "SM-G998U", "SM-G998B", "SM-G998N", "SM-G998P", "SM-T800" ])

  mkTest """string.numeric(4)""" (FC_String_Numeric 4)

  mkTest """helpers.fromRegExp("A[0-9][ABCEGHJ-NPRSTVW-Z] [0-9][ABCEGHJ-NPRSTVW-Z][0-9]")""" (FC_Helpers_FromRegExp "A")
  mkTest """helpers.fromRegExp("B[0-9][ABCEGHJ-NPRSTVW-Z] [0-9][ABCEGHJ-NPRSTVW-Z][0-9]")""" (FC_Helpers_FromRegExp "B")
  mkTest """helpers.fromRegExp("C[0-9][ABCEGHJ-NPRSTVW-Z] [0-9][ABCEGHJ-NPRSTVW-Z][0-9]")""" (FC_Helpers_FromRegExp "C")
  mkTest """helpers.fromRegExp("E[0-9][ABCEGHJ-NPRSTVW-Z] [0-9][ABCEGHJ-NPRSTVW-Z][0-9]")""" (FC_Helpers_FromRegExp "E")
  mkTest """helpers.fromRegExp("R[0-9][ABCEGHJ-NPRSTVW-Z] [0-9][ABCEGHJ-NPRSTVW-Z][0-9]")""" (FC_Helpers_FromRegExp "R")
  mkTest """helpers.fromRegExp("S[0-9][ABCEGHJ-NPRSTVW-Z] [0-9][ABCEGHJ-NPRSTVW-Z][0-9]")""" (FC_Helpers_FromRegExp "S")
  mkTest """helpers.fromRegExp("T[0-9][ABCEGHJ-NPRSTVW-Z] [0-9][ABCEGHJ-NPRSTVW-Z][0-9]")""" (FC_Helpers_FromRegExp "T")
  mkTest """helpers.fromRegExp("V[0-9][ABCEGHJ-NPRSTVW-Z] [0-9][ABCEGHJ-NPRSTVW-Z][0-9]")""" (FC_Helpers_FromRegExp "V")
  mkTest """helpers.fromRegExp("X[0-9][ABCEGHJ-NPRSTVW-Z] [0-9][ABCEGHJ-NPRSTVW-Z][0-9]")""" (FC_Helpers_FromRegExp "X")
  mkTest """helpers.fromRegExp("Y[0-9][ABCEGHJ-NPRSTVW-Z] [0-9][ABCEGHJ-NPRSTVW-Z][0-9]")""" (FC_Helpers_FromRegExp "Y")
  mkTest """helpers.fromRegExp("[GHJ][0-9][ABCEGHJ-NPRSTVW-Z] [0-9][ABCEGHJ-NPRSTVW-Z][0-9]")""" (FC_Helpers_FromRegExp "GHJ")
  mkTest """helpers.fromRegExp("[KLMNP][0-9][ABCEGHJ-NPRSTVW-Z] [0-9][ABCEGHJ-NPRSTVW-Z][0-9]")""" (FC_Helpers_FromRegExp "KLMNP")
