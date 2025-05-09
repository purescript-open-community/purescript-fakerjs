module Fakerjs2Generate.Parser.FunctionCallKnown where

import Fakerjs2Generate.Parser.FunctionCall (FunctionCall(..), IntArgs)

import Prelude
import Data.Array.NonEmpty (NonEmptyArray)
import Data.Either (Either(..), either)
import Data.Generic.Rep (class Generic)
import Data.Show.Generic (genericShow)
import Data.String.NonEmpty (NonEmptyString)
import Data.Either (Either(..))

newtype FunctionCallKnownError = UnknownFunctionCall FunctionCall

derive instance Generic FunctionCallKnownError _
derive instance Eq FunctionCallKnownError
derive instance Ord FunctionCallKnownError
instance Show FunctionCallKnownError where
  show = genericShow

-- Known function call ADT
data FunctionCallKnown
  = FCK_Abbreviation
  | FCK_Adjective
  | FCK_Ingverb
  | FCK_Verb
  | FCK_Noun
  | FCK_Animal_Bird
  | FCK_Animal_Type
  | FCK_CellPhone_CommonCellPrefix
  | FCK_Color_Human
  | FCK_Commerce_Department
  | FCK_Commerce_ProductAdjective
  | FCK_Commerce_ProductMaterial
  | FCK_Commerce_Product
  | FCK_Company_Adjective
  | FCK_Company_CatchPhrase
  | FCK_Company_Category
  | FCK_Company_CompanyName
  | FCK_Company_LegalEntityType
  | FCK_Company_Name
  | FCK_Company_Noun
  | FCK_Company_Prefix
  | FCK_Company_Suffix
  | FCK_Finance_Amount
  | FCK_Finance_CurrencyCode
  | FCK_Finance_TransactionType
  | FCK_Food_Adjective
  | FCK_Food_EthnicCategory
  | FCK_Food_Fruit
  | FCK_Food_Ingredient
  | FCK_Food_Meat
  | FCK_Food_Spice
  | FCK_Food_Vegetable
  | FCK_Internet_Emoji
  | FCK_Location_BuildingNumber
  | FCK_Location_CityInfix
  | FCK_Location_CityName
  | FCK_Location_CityPrefix
  | FCK_Location_CitySuffix
  | FCK_Location_City
  | FCK_Location_CommonStreetSuffix
  | FCK_Location_Country
  | FCK_Location_SecondaryAddress
  | FCK_Location_State
  | FCK_Location_StreetCantonesePart
  | FCK_Location_StreetEnglishPart
  | FCK_Location_StreetNamePart
  | FCK_Location_StreetName
  | FCK_Location_StreetPrefix
  | FCK_Location_StreetSuffix
  | FCK_Location_Street
  | FCK_Person_BioPart
  | FCK_Person_BioSupporter
  | FCK_Person_FirstName
  | FCK_Person_JobArea
  | FCK_Person_JobDescriptor
  | FCK_Person_JobType
  | FCK_Person_LastName
  | FCK_Person_MiddleName
  | FCK_Person_Name
  | FCK_Person_Prefix
  | FCK_Person_Suffix
  | FCK_System_Semver
  | FCK_Team_Creature
  | FCK_Team_Prefix
  | FCK_Team_Suffix
  | FCK_Word_Adjective
  | FCK_Word_Noun
  | FCK_Person_FirstName_Female
  | FCK_Person_FirstName_Generic
  | FCK_Person_FirstName_Male
  | FCK_Person_LastName_Female
  | FCK_Person_LastName_Generic
  | FCK_Person_LastName_Male
  | FCK_Science_ChemicalElement_Name
  | FCK_Number_Int IntArgs
  | FCK_Helpers_ArrayElement (Array String)
  | FCK_String_Numeric Int
  | FCK_Helpers_FromRegExp String

derive instance Generic FunctionCallKnown _
derive instance Eq FunctionCallKnown
derive instance Ord FunctionCallKnown
instance Show FunctionCallKnown where
  show = genericShow

fromFunctionCallToKnown :: FunctionCall -> Either FunctionCallKnownError FunctionCallKnown
fromFunctionCallToKnown = case _ of
  FC_SimpleIdentifier "abbreviation" -> Right FCK_Abbreviation
  FC_SimpleIdentifier "adjective" -> Right FCK_Adjective
  FC_SimpleIdentifier "ingverb" -> Right FCK_Ingverb
  FC_SimpleIdentifier "verb" -> Right FCK_Verb
  FC_SimpleIdentifier "noun" -> Right FCK_Noun

  FC_SimpleIdentifier2 "animal" "bird" -> Right FCK_Animal_Bird
  FC_SimpleIdentifier2 "animal" "type" -> Right FCK_Animal_Type
  FC_SimpleIdentifier2 "cell_phone" "common_cell_prefix" -> Right FCK_CellPhone_CommonCellPrefix
  FC_SimpleIdentifier2 "color" "human" -> Right FCK_Color_Human
  FC_SimpleIdentifier2 "commerce" "department" -> Right FCK_Commerce_Department
  FC_SimpleIdentifier2 "commerce" "productAdjective" -> Right FCK_Commerce_ProductAdjective
  FC_SimpleIdentifier2 "commerce" "productMaterial" -> Right FCK_Commerce_ProductMaterial
  FC_SimpleIdentifier2 "commerce" "product" -> Right FCK_Commerce_Product
  FC_SimpleIdentifier2 "company" "adjective" -> Right FCK_Company_Adjective
  FC_SimpleIdentifier2 "company" "catchPhrase" -> Right FCK_Company_CatchPhrase
  FC_SimpleIdentifier2 "company" "category" -> Right FCK_Company_Category
  FC_SimpleIdentifier2 "company" "company_name" -> Right FCK_Company_CompanyName
  FC_SimpleIdentifier2 "company" "legal_entity_type" -> Right FCK_Company_LegalEntityType
  FC_SimpleIdentifier2 "company" "name" -> Right FCK_Company_Name
  FC_SimpleIdentifier2 "company" "noun" -> Right FCK_Company_Noun
  FC_SimpleIdentifier2 "company" "prefix" -> Right FCK_Company_Prefix
  FC_SimpleIdentifier2 "company" "suffix" -> Right FCK_Company_Suffix
  FC_SimpleIdentifier2 "finance" "amount" -> Right FCK_Finance_Amount
  FC_SimpleIdentifier2 "finance" "currencyCode" -> Right FCK_Finance_CurrencyCode
  FC_SimpleIdentifier2 "finance" "transactionType" -> Right FCK_Finance_TransactionType
  FC_SimpleIdentifier2 "food" "adjective" -> Right FCK_Food_Adjective
  FC_SimpleIdentifier2 "food" "ethnic_category" -> Right FCK_Food_EthnicCategory
  FC_SimpleIdentifier2 "food" "fruit" -> Right FCK_Food_Fruit
  FC_SimpleIdentifier2 "food" "ingredient" -> Right FCK_Food_Ingredient
  FC_SimpleIdentifier2 "food" "meat" -> Right FCK_Food_Meat
  FC_SimpleIdentifier2 "food" "spice" -> Right FCK_Food_Spice
  FC_SimpleIdentifier2 "food" "vegetable" -> Right FCK_Food_Vegetable
  FC_SimpleIdentifier2 "internet" "emoji" -> Right FCK_Internet_Emoji
  FC_SimpleIdentifier2 "location" "buildingNumber" -> Right FCK_Location_BuildingNumber
  FC_SimpleIdentifier2 "location" "city_infix" -> Right FCK_Location_CityInfix
  FC_SimpleIdentifier2 "location" "city_name" -> Right FCK_Location_CityName
  FC_SimpleIdentifier2 "location" "city_prefix" -> Right FCK_Location_CityPrefix
  FC_SimpleIdentifier2 "location" "city_suffix" -> Right FCK_Location_CitySuffix
  FC_SimpleIdentifier2 "location" "city" -> Right FCK_Location_City
  FC_SimpleIdentifier2 "location" "common_street_suffix" -> Right FCK_Location_CommonStreetSuffix
  FC_SimpleIdentifier2 "location" "country" -> Right FCK_Location_Country
  FC_SimpleIdentifier2 "location" "secondaryAddress" -> Right FCK_Location_SecondaryAddress
  FC_SimpleIdentifier2 "location" "state" -> Right FCK_Location_State
  FC_SimpleIdentifier2 "location" "street_cantonese_part" -> Right FCK_Location_StreetCantonesePart
  FC_SimpleIdentifier2 "location" "street_english_part" -> Right FCK_Location_StreetEnglishPart
  FC_SimpleIdentifier2 "location" "street_name_part" -> Right FCK_Location_StreetNamePart
  FC_SimpleIdentifier2 "location" "street_name" -> Right FCK_Location_StreetName
  FC_SimpleIdentifier2 "location" "street_prefix" -> Right FCK_Location_StreetPrefix
  FC_SimpleIdentifier2 "location" "street_suffix" -> Right FCK_Location_StreetSuffix
  FC_SimpleIdentifier2 "location" "street" -> Right FCK_Location_Street
  FC_SimpleIdentifier2 "person" "bio_part" -> Right FCK_Person_BioPart
  FC_SimpleIdentifier2 "person" "bio_supporter" -> Right FCK_Person_BioSupporter
  FC_SimpleIdentifier2 "person" "firstName" -> Right FCK_Person_FirstName
  FC_SimpleIdentifier2 "person" "jobArea" -> Right FCK_Person_JobArea
  FC_SimpleIdentifier2 "person" "jobDescriptor" -> Right FCK_Person_JobDescriptor
  FC_SimpleIdentifier2 "person" "jobType" -> Right FCK_Person_JobType
  FC_SimpleIdentifier2 "person" "lastName" -> Right FCK_Person_LastName
  FC_SimpleIdentifier2 "person" "middleName" -> Right FCK_Person_MiddleName
  FC_SimpleIdentifier2 "person" "name" -> Right FCK_Person_Name
  FC_SimpleIdentifier2 "person" "prefix" -> Right FCK_Person_Prefix
  FC_SimpleIdentifier2 "person" "suffix" -> Right FCK_Person_Suffix
  FC_SimpleIdentifier2 "system" "semver" -> Right FCK_System_Semver
  FC_SimpleIdentifier2 "team" "creature" -> Right FCK_Team_Creature
  FC_SimpleIdentifier2 "team" "prefix" -> Right FCK_Team_Prefix
  FC_SimpleIdentifier2 "team" "suffix" -> Right FCK_Team_Suffix
  FC_SimpleIdentifier2 "word" "adjective" -> Right FCK_Word_Adjective
  FC_SimpleIdentifier2 "word" "noun" -> Right FCK_Word_Noun

  FC_SimpleIdentifier3 "person" "first_name" "female" -> Right FCK_Person_FirstName_Female
  FC_SimpleIdentifier3 "person" "first_name" "generic" -> Right FCK_Person_FirstName_Generic
  FC_SimpleIdentifier3 "person" "first_name" "male" -> Right FCK_Person_FirstName_Male
  FC_SimpleIdentifier3 "person" "last_name" "female" -> Right FCK_Person_LastName_Female
  FC_SimpleIdentifier3 "person" "last_name" "generic" -> Right FCK_Person_LastName_Generic
  FC_SimpleIdentifier3 "person" "last_name" "male" -> Right FCK_Person_LastName_Male
  FC_SimpleIdentifier3 "science" "chemical_element" "name" -> Right FCK_Science_ChemicalElement_Name

  FC_Number_Int args -> Right (FCK_Number_Int args)
  FC_Helpers_ArrayElement xs -> Right (FCK_Helpers_ArrayElement xs)
  FC_String_Numeric n -> Right (FCK_String_Numeric n)
  FC_Helpers_FromRegExp str -> Right (FCK_Helpers_FromRegExp str)

  other -> Left (UnknownFunctionCall other)
