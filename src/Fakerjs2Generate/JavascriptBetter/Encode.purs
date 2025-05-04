module Fakerjs2Generate.JavascriptBetter.Encode where

import Fakerjs2Generate.JavascriptBetter.Encode.Impl
import Fakerjs2Generate.JavascriptBetter.Encode.Utils
import Fakerjs2Generate.JavascriptBetter.Types
import Fakerjs2Generate.Utils
import Prelude

import Data.Array.NonEmpty (NonEmptyArray)
import Data.Array.NonEmpty as NonEmptyArray
import Data.Map (Map)
import Data.Map as Map
import Data.String.Extra (pascalCase)
import Data.String.NonEmpty (NonEmptyString)
import Data.String.NonEmpty as NonEmptyString
import Data.Traversable (for_, traverse)
import Data.Tuple (Tuple(..))
import Fakerjs2Generate.Tree (PathInfo)
import PureScript.CST.Types (Expr, Ident, Module, Proper, QualifiedName)
import Tidy.Codegen (declSignature, declValue, exprApp, exprArray, exprIdent, exprInt, exprRecord, exprString, exprTyped, typeApp, typeArrow, typeCtor)
import Tidy.Codegen.Monad (Codegen, exporting, write)
import Tidy.Codegen.Monad as Tidy.Codegen.Monad
import Type.Prelude (Proxy)
import Fakerjs2Generate.JavascriptBetter.Encode.CodeGenOutput

encodeReplaceSymbols :: forall a. Encoder a -> Encoder (ReplaceSymbols a)
encodeReplaceSymbols e (ReplaceSymbols x) = e x

encodeWithFunctionCall :: forall a. Encoder a -> Encoder (WithFunctionCall a)
encodeWithFunctionCall e (WithFunctionCall x) = e x

encodeWeightedOf
  :: forall a
   . Partial
  => Encoder a
  -> Encoder (Weighted a)
encodeWeightedOf encodeA (Weighted a) = encodeRecord
  { value: encodeA
  , weight: encodeInt
  }
  a

encodeExtensions :: Partial => Encoder { extensions :: NonEmptyArray NonEmptyString }
encodeExtensions = encodeRecord
  { extensions: encodeNEAOf encodeNES
  }

encodeNameCodeSymbolNumericCode :: Partial => Encoder NameCodeSymbolNumericCode
encodeNameCodeSymbolNumericCode = encodeRecord
  { name: encodeNES
  , code: encodeNES
  , symbol: encodeString
  , numericCode: encodeNES
  }

---------------------------

encoders :: Partial => Record (DirsTo EncoderToExport)
encoders =
  { "cell_phone/formats": exportOne $ encodeNEAOf (encodeWithFunctionCall (encodeReplaceSymbols encodeNES))
  , "company/legal_entity_type": exportOne $ encodeNEAOf encodeNES
  , "internet/domain_suffix": exportOne $ encodeNEAOf encodeNES
  , "location/city_name": exportOne $ encodeNEAOf encodeNES
  , "location/city_pattern": exportOne $ encodeNEAOf (encodeWithFunctionCall encodeNES)
  , "location/postcode": exportOne $ encodeNEAOf (encodeReplaceSymbols encodeNES)
  , "location/state": exportOne $ encodeNEAOf encodeString
  , "location/street_pattern": exportOne $ encodeNEAOf (encodeWithFunctionCall encodeNES)
  , "person/first_name": exportRecord { generic: encodeNEAOf encodeNES, female: encodeMaybe (encodeNEAOf encodeNES), male: encodeMaybe (encodeNEAOf encodeNES) }
  , "person/last_name": exportRecord { generic: encodeNEAOf encodeNES, female: encodeMaybe (encodeNEAOf encodeNES), male: encodeMaybe (encodeNEAOf encodeNES) }
  , "person/last_name_pattern": exportRecord { generic: encodeNEAOf (encodeWeightedOf (encodeWithFunctionCall encodeNES)) }
  , "color/human": exportOne $ encodeNEAOf encodeNES
  , "commerce/department": exportOne $ encodeNEAOf encodeNES
  , "commerce/product_name": exportOne $ (encodeRecord { adjective: encodeNEAOf encodeNES, material: encodeNEAOf encodeNES, product: encodeNEAOf encodeNES })
  , "date/month": exportOne $ (encodeRecord { wide: encodeNEAOf encodeNES, abbr: encodeNEAOf encodeNES })
  , "date/weekday": exportOne $ (encodeRecord { abbr: encodeMaybe (encodeNEAOf encodeNES), wide: encodeNEAOf encodeNES })
  , "location/building_number": exportOne $ encodeNEAOf (encodeReplaceSymbols encodeNES)
  , "location/country": exportOne $ encodeNEAOf encodeNES
  , "location/secondary_address": exportOne $ encodeNEAOf (encodeWithFunctionCall (encodeReplaceSymbols encodeNES))
  , "location/street_address": exportOne $ encodeRecord { normal: encodeWithFunctionCall encodeNES, full: encodeWithFunctionCall encodeNES }
  , "location/street_prefix": exportOne $ encodeNEAOf encodeNES
  , "lorem/word": exportOne $ encodeNEAOf encodeString
  , "person/job_type": exportOne $ encodeNEAOf encodeNES
  , "person/name": exportOne $ encodeNEAOf (encodeWeightedOf (encodeWithFunctionCall encodeNES))
  , "person/prefix": exportOne $ encodeMaybe (encodeRecord { generic: encodeNEAOf encodeNES, female: encodeMaybe (encodeNEAOf encodeNES), male: encodeMaybe (encodeNEAOf encodeNES) })
  , "person/suffix": exportOne $ encodeNEAOf encodeNES
  , "team/creature": exportOne $ encodeNEAOf encodeNES
  , "team/name": exportOne $ encodeNEAOf (encodeWithFunctionCall encodeNES)
  , "vehicle/fuel": exportOne $ encodeNEAOf encodeNES
  , "vehicle/manufacturer": exportOne $ encodeNEAOf encodeNES
  , "vehicle/model": exportOne $ encodeNEAOf encodeNES
  , "vehicle/type": exportOne $ encodeNEAOf encodeNES
  , "color/space": exportOne $ encodeNEAOf encodeNES
  , "database/collation": exportOne $ encodeNEAOf encodeNES
  , "database/engine": exportOne $ encodeNEAOf encodeNES
  , "database/type": exportOne $ encodeNEAOf encodeNES
  , "date/time_zone": exportOne $ encodeNEAOf encodeNES
  , "hacker/abbreviation": exportOne $ encodeNEAOf encodeNES
  , "internet/emoji": exportOne $ encodeRecord { smiley: encodeNEAOf encodeNES, body: encodeNEAOf encodeNES, person: encodeNEAOf encodeNES, nature: encodeNEAOf encodeNES, food: encodeNEAOf encodeNES, travel: encodeNEAOf encodeNES, activity: encodeNEAOf encodeNES, object: encodeNEAOf encodeNES, symbol: encodeNEAOf encodeNES, flag: encodeNEAOf encodeNES }
  , "internet/http_status_code": exportOne $ encodeRecord { informational: encodeNEAOf encodeInt, success: encodeNEAOf encodeInt, redirection: encodeNEAOf encodeInt, clientError: encodeNEAOf encodeInt, serverError: encodeNEAOf encodeInt }
  , "internet/jwt_algorithm": exportOne $ encodeNEAOf encodeNES
  , "internet/user_agent_pattern": exportOne $ encodeNEAOf (encodeWithFunctionCall encodeNES)
  , "location/country_code": exportOne $ encodeNEAOf (encodeRecord { alpha2: encodeNES, alpha3: encodeNES, numeric: encodeNES })
  , "location/time_zone": exportOne $ encodeNEAOf (encodeMaybe encodeNES)
  , "system/directory_path": exportOne $ encodeNEAOf encodeNES
  , "system/mime_type": exportOne $ (encodeMapOf (encodeRecord { extensions: encodeNEAOf encodeNES }))
  , "company/name_pattern": exportOne $ encodeNEAOf (encodeWithFunctionCall encodeNES)
  , "internet/free_email": exportOne $ encodeNEAOf encodeNES
  , "location/state_abbr": exportOne $ encodeNEAOf encodeNES
  , "location/street_name": exportOne $ encodeNEAOf encodeNES
  , "commerce/product_description": exportOne $ encodeNEAOf encodeNES
  , "company/adjective": exportOne $ encodeNEAOf encodeNES
  , "company/buzz_adjective": exportOne $ encodeNEAOf encodeNES
  , "company/buzz_noun": exportOne $ encodeNEAOf encodeNES
  , "company/buzz_verb": exportOne $ encodeNEAOf encodeNES
  , "company/company_name": exportOne $ encodeNEAOf encodeNES
  , "company/descriptor": exportOne $ encodeNEAOf encodeNES
  , "company/noun": exportOne $ encodeNEAOf encodeNES
  , "location/direction": exportOne $ encodeRecord { cardinal: encodeNEAOf encodeNES, cardinal_abbr: encodeNEAOf encodeNES, ordinal: encodeNEAOf encodeNES, ordinal_abbr: encodeNEAOf encodeNES }
  , "person/middle_name": exportRecord { generic: encodeNEAOf encodeNES, female: encodeMaybe (encodeNEAOf encodeNES), male: encodeMaybe (encodeNEAOf encodeNES) }
  , "person/sex": exportOne $ encodeNEAOf encodeNES
  , "word/adjective": exportOne $ encodeNEAOf encodeNES
  , "word/adverb": exportOne $ encodeNEAOf encodeNES
  , "word/conjunction": exportOne $ encodeNEAOf encodeNES
  , "word/interjection": exportOne $ encodeNEAOf encodeNES
  , "word/noun": exportOne $ encodeNEAOf encodeNES
  , "word/preposition": exportOne $ encodeNEAOf encodeNES
  , "word/verb": exportOne $ encodeNEAOf encodeNES
  , "animal/type": exportOne $ encodeNEAOf encodeNES
  , "database/column": exportOne $ encodeNEAOf encodeNES
  , "location/city_prefix": exportOne $ encodeNEAOf encodeNES
  , "location/city_suffix": exportOne $ encodeNEAOf encodeNES
  , "person/nobility_title_prefix": exportOne $ encodeNEAOf encodeNES
  , "app/author": exportOne $ encodeNEAOf (encodeWithFunctionCall encodeNES)
  , "app/name": exportOne $ encodeNEAOf encodeNES
  , "app/version": exportOne $ encodeNEAOf encodeNES
  , "finance/account_type": exportOne $ encodeNEAOf encodeNES
  , "finance/currency": exportOne $ encodeNEAOf (encodeRecord { name: encodeNES, code: encodeNES, symbol: encodeString, numericCode: encodeNES })
  , "finance/transaction_type": exportOne $ encodeNEAOf encodeNES
  , "hacker/adjective": exportOne $ encodeNEAOf encodeNES
  , "hacker/noun": exportOne $ encodeNEAOf encodeNES
  , "hacker/verb": exportOne $ encodeNEAOf encodeNES
  , "person/job_area": exportOne $ encodeNEAOf encodeNES
  , "person/job_descriptor": exportOne $ encodeNEAOf encodeNES
  , "airline/airline": exportOne $ encodeNEAOf (encodeRecord { name: encodeNES, iataCode: encodeNES })
  , "airline/airplane": exportOne $ encodeNEAOf (encodeRecord { name: encodeNES, iataTypeCode: encodeNES })
  , "airline/airport": exportOne $ encodeNEAOf (encodeRecord { name: encodeNES, iataCode: encodeNES })
  , "animal/bear": exportOne $ encodeNEAOf encodeNES
  , "animal/bird": exportOne $ encodeNEAOf encodeNES
  , "animal/cat": exportOne $ encodeNEAOf encodeNES
  , "animal/cetacean": exportOne $ encodeNEAOf encodeNES
  , "animal/cow": exportOne $ encodeNEAOf encodeNES
  , "animal/crocodilia": exportOne $ encodeNEAOf encodeNES
  , "animal/dog": exportOne $ encodeNEAOf encodeNES
  , "animal/fish": exportOne $ encodeNEAOf encodeNES
  , "animal/horse": exportOne $ encodeNEAOf encodeNES
  , "animal/insect": exportOne $ encodeNEAOf encodeNES
  , "animal/lion": exportOne $ encodeNEAOf encodeNES
  , "animal/pet_name": exportOne $ encodeNEAOf encodeNES
  , "animal/rabbit": exportOne $ encodeNEAOf encodeNES
  , "animal/rodent": exportOne $ encodeNEAOf encodeNES
  , "animal/snake": exportOne $ encodeNEAOf encodeNES
  , "book/author": exportOne $ encodeNEAOf encodeNES
  , "book/format": exportOne $ encodeNEAOf encodeNES
  , "book/genre": exportOne $ encodeNEAOf encodeNES
  , "book/publisher": exportOne $ encodeNEAOf encodeNES
  , "book/series": exportOne $ encodeNEAOf encodeNES
  , "book/title": exportOne $ encodeNEAOf encodeNES
  , "finance/transaction_description_pattern": exportOne $ encodeNEAOf (encodeWithFunctionCall encodeNES)
  , "food/adjective": exportOne $ encodeNEAOf encodeNES
  , "food/description_pattern": exportOne $ encodeNEAOf (encodeWithFunctionCall encodeNES)
  , "food/dish": exportOne $ encodeNEAOf encodeNES
  , "food/dish_pattern": exportOne $ encodeNEAOf (encodeWithFunctionCall encodeNES)
  , "food/ethnic_category": exportOne $ encodeNEAOf encodeNES
  , "food/fruit": exportOne $ encodeNEAOf encodeNES
  , "food/ingredient": exportOne $ encodeNEAOf encodeNES
  , "food/meat": exportOne $ encodeNEAOf encodeNES
  , "food/spice": exportOne $ encodeNEAOf encodeNES
  , "food/vegetable": exportOne $ encodeNEAOf encodeNES
  , "hacker/ingverb": exportOne $ encodeNEAOf encodeNES
  , "hacker/phrase": exportOne $ encodeNEAOf (encodeWithFunctionCall encodeNES)
  , "internet/example_email": exportOne $ encodeNEAOf encodeNES
  , "location/continent": exportOne $ encodeNEAOf encodeNES
  , "location/county": exportOne $ encodeNEAOf encodeNES
  , "location/language": exportOne $ encodeNEAOf (encodeRecord { name: encodeNES, alpha2: encodeNES, alpha3: encodeNES })
  , "music/album": exportOne $ encodeNEAOf encodeNES
  , "music/artist": exportOne $ encodeNEAOf encodeNES
  , "music/genre": exportOne $ encodeNEAOf encodeNES
  , "music/song_name": exportOne $ encodeNEAOf encodeNES
  , "person/bio_part": exportOne $ encodeNEAOf encodeNES
  , "person/bio_pattern": exportOne $ encodeNEAOf (encodeWithFunctionCall encodeNES)
  , "person/bio_supporter": exportOne $ encodeNEAOf encodeNES
  , "person/gender": exportOne $ encodeNEAOf encodeNES
  , "person/job_title_pattern": exportOne $ encodeNEAOf (encodeWithFunctionCall encodeNES)
  , "person/western_zodiac_sign": exportOne $ encodeNEAOf encodeNES
  , "science/chemical_element": exportOne $ encodeNEAOf (encodeRecord { symbol: encodeNES, name: encodeNES, atomicNumber: encodeInt })
  , "science/unit": exportOne $ encodeNEAOf (encodeRecord { name: encodeNES, symbol: encodeNES })
  , "vehicle/bicycle_type": exportOne $ encodeNEAOf encodeNES
  , "location/postcode_by_state": exportOne $ encodeNEAOf (encodeMaybe (encodeMapOf (encodeEither (encodeWithFunctionCall encodeNES) (encodeNEAOf (encodeWithFunctionCall encodeNES)))))
  , "location/city_infix": exportOne $ encodeNEAOf encodeNES
  , "location/street_cantonese_part": exportOne $ encodeNEAOf encodeNES
  , "location/street_english_part": exportOne $ encodeNEAOf encodeNES
  , "phone_number/area_code": exportOne $ encodeNEAOf encodeNES
  , "phone_number/exchange_code": exportOne $ encodeNEAOf encodeNES
  , "company/prefix": exportOne $ encodeNEAOf encodeNES
  , "person/female_title": exportOne $ encodeNEAOf encodeNES
  , "person/male_title": exportOne $ encodeNEAOf encodeNES
  , "company/category": exportOne $ encodeNEAOf encodeNES
  , "location/street_suffix": exportOne $ encodeNEAOf encodeNES
  , "location/common_street_suffix": exportOne $ encodeNEAOf encodeNES
  , "team/prefix": exportOne $ encodeNEAOf encodeNES
  , "location/street_name_part": exportOne $ encodeNEAOf encodeNES
  , "company/suffix": exportOne $ encodeNEAOf encodeNES
  , "cell_phone/common_cell_prefix": exportOne $ encodeNEAOf encodeInt
  , "team/suffix": exportOne $ encodeNEAOf encodeNES
  , "person/bio_parts": exportOne $ encodeNEAOf encodeNES
  , "person/job_title": exportOne $ encodeNEAOf encodeNES
  , "phone_number/format/human": exportOne $ encodeNEAOf encodeNES
  , "phone_number/format/international": exportOne $ encodeNEAOf encodeNES
  , "phone_number/format/national": exportOne $ encodeNEAOf encodeNES
  , "finance/credit_card/american_express": exportOne $ encodeNEAOf encodeNES
  , "finance/credit_card/discover": exportOne $ encodeNEAOf encodeNES
  , "finance/credit_card/mastercard": exportOne $ encodeNEAOf encodeNES
  , "finance/credit_card/visa": exportOne $ encodeNEAOf encodeNES
  , "finance/credit_card/diners_club": exportOne $ encodeNEAOf encodeNES
  , "finance/credit_card/jcb": exportOne $ encodeNEAOf encodeNES
  , "finance/credit_card/unionpay": exportOne $ encodeNEAOf encodeNES
  }
