module Fakerjs2Generate.JavascriptBetter.Type where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Map (Map)
import Data.Maybe (Maybe)
import Data.String.NonEmpty (NonEmptyString)
import Data.Variant (Variant)

type Weighted a = { value :: a, weight :: Int }

newtype ReplaceSymbols a = ReplaceSymbols a
newtype WithFunctionCall a = WithFunctionCall a

type My = Variant
  ( "cell_phone/formats.ts" :: NonEmptyArray (WithFunctionCall (ReplaceSymbols NonEmptyString))
  , "company/legal_entity_type.ts" :: NonEmptyArray NonEmptyString
  , "internet/domain_suffix.ts" :: NonEmptyArray NonEmptyString
  , "location/city_name.ts" :: NonEmptyArray NonEmptyString
  , "location/city_pattern.ts" :: NonEmptyArray (WithFunctionCall NonEmptyString)
  , "location/postcode.ts" :: NonEmptyArray (Maybe (ReplaceSymbols NonEmptyString))
  , "location/state.ts" :: NonEmptyArray String
  , "location/street_pattern.ts" :: NonEmptyArray (WithFunctionCall NonEmptyString)
  , "person/first_name.ts" :: NonEmptyArray { generic :: NonEmptyArray NonEmptyString, female :: NonEmptyArray NonEmptyString, male :: NonEmptyArray NonEmptyString }
  , "person/last_name.ts" :: NonEmptyArray { generic :: NonEmptyArray NonEmptyString, female :: Maybe (Array NonEmptyString), male :: Maybe (Array NonEmptyString) }
  , "person/last_name_pattern.ts" :: NonEmptyArray { generic :: NonEmptyArray (Weighted (WithFunctionCall NonEmptyString)) }
  , "color/human.ts" :: NonEmptyArray NonEmptyString
  , "commerce/department.ts" :: NonEmptyArray NonEmptyString
  , "commerce/product_name.ts" :: NonEmptyArray { adjective :: NonEmptyArray NonEmptyString, material :: NonEmptyArray NonEmptyString, product :: NonEmptyArray NonEmptyString }
  , "date/month.ts" :: NonEmptyArray { wide :: NonEmptyArray NonEmptyString, abbr :: NonEmptyArray NonEmptyString }
  , "date/weekday.ts" :: NonEmptyArray { abbr :: Maybe (NonEmptyArray NonEmptyString), wide :: NonEmptyArray NonEmptyString }
  , "location/building_number.ts" :: NonEmptyArray (ReplaceSymbols NonEmptyString)
  , "location/country.ts" :: NonEmptyArray NonEmptyString
  , "location/secondary_address.ts" :: NonEmptyArray (WithFunctionCall (ReplaceSymbols NonEmptyString))
  , "location/street_address.ts" :: NonEmptyArray { normal :: WithFunctionCall NonEmptyString, full :: WithFunctionCall NonEmptyString }
  , "location/street_prefix.ts" :: NonEmptyArray NonEmptyString
  , "lorem/word.ts" :: NonEmptyArray String
  , "person/job_type.ts" :: NonEmptyArray NonEmptyString
  , "person/name.ts" :: NonEmptyArray (Weighted (WithFunctionCall NonEmptyString))
  , "person/prefix.ts" :: NonEmptyArray { generic :: NonEmptyArray NonEmptyString, female :: NonEmptyArray NonEmptyString, male :: NonEmptyArray NonEmptyString }
  , "person/suffix.ts" :: NonEmptyArray NonEmptyString
  , "team/creature.ts" :: NonEmptyArray NonEmptyString
  , "team/name.ts" :: NonEmptyArray (WithFunctionCall NonEmptyString)
  , "vehicle/fuel.ts" :: NonEmptyArray NonEmptyString
  , "vehicle/manufacturer.ts" :: NonEmptyArray NonEmptyString
  , "vehicle/model.ts" :: NonEmptyArray NonEmptyString
  , "vehicle/type.ts" :: NonEmptyArray NonEmptyString
  , "color/space.ts" :: NonEmptyArray NonEmptyString
  , "database/collation.ts" :: NonEmptyArray NonEmptyString
  , "database/engine.ts" :: NonEmptyArray NonEmptyString
  , "database/type.ts" :: NonEmptyArray NonEmptyString
  , "date/time_zone.ts" :: NonEmptyArray NonEmptyString
  , "hacker/abbreviation.ts" :: NonEmptyArray NonEmptyString
  , "internet/emoji.ts" ::
      { smiley :: NonEmptyArray NonEmptyString
      , body :: NonEmptyArray NonEmptyString
      , person :: NonEmptyArray NonEmptyString
      , nature :: NonEmptyArray NonEmptyString
      , food :: NonEmptyArray NonEmptyString
      , travel :: NonEmptyArray NonEmptyString
      , activity :: NonEmptyArray NonEmptyString
      , object :: NonEmptyArray NonEmptyString
      , symbol :: NonEmptyArray NonEmptyString
      , flag :: NonEmptyArray NonEmptyString
      }
  , "internet/http_status_code.ts" ::
      { informational :: NonEmptyArray Int
      , success :: NonEmptyArray Int
      , redirection :: NonEmptyArray Int
      , clientError :: NonEmptyArray Int
      , serverError :: NonEmptyArray Int
      }
  , "internet/jwt_algorithm.ts" :: NonEmptyArray NonEmptyString
  , "internet/user_agent_pattern.ts" :: NonEmptyArray (WithFunctionCall NonEmptyString)
  , "location/country_code.ts" :: NonEmptyArray { alpha2 :: NonEmptyString, alpha3 :: NonEmptyString, numeric :: NonEmptyString }
  , "location/time_zone.ts" :: NonEmptyArray (Maybe NonEmptyString)
  , "system/directory_path.ts" :: NonEmptyArray NonEmptyString
  , "system/mime_type.ts" :: NonEmptyArray (Map NonEmptyString { extensions :: NonEmptyArray NonEmptyString })
  , "company/name_pattern.ts" :: NonEmptyArray (WithFunctionCall NonEmptyString)
  , "internet/free_email.ts" :: NonEmptyArray NonEmptyString
  , "location/state_abbr.ts" :: NonEmptyArray NonEmptyString
  , "location/street_name.ts" :: NonEmptyArray NonEmptyString
  , "commerce/product_description.ts" :: NonEmptyArray NonEmptyString
  , "company/adjective.ts" :: NonEmptyArray NonEmptyString
  , "company/buzz_adjective.ts" :: NonEmptyArray NonEmptyString
  , "company/buzz_noun.ts" :: NonEmptyArray NonEmptyString
  , "company/buzz_verb.ts" :: NonEmptyArray NonEmptyString
  , "company/company_name.ts" :: NonEmptyArray NonEmptyString
  , "company/descriptor.ts" :: NonEmptyArray NonEmptyString
  , "company/noun.ts" :: NonEmptyArray NonEmptyString
  , "location/direction.ts" ::
      NonEmptyArray
        { cardinal :: NonEmptyArray NonEmptyString
        , cardinal_abbr :: NonEmptyArray NonEmptyString
        , ordinal :: NonEmptyArray NonEmptyString
        , ordinal_abbr :: NonEmptyArray NonEmptyString
        }
  , "person/middle_name.ts" :: NonEmptyArray { generic :: NonEmptyArray NonEmptyString, female :: NonEmptyArray NonEmptyString, male :: NonEmptyArray NonEmptyString }
  )
