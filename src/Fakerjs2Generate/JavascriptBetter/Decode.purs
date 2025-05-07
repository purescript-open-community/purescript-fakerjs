module Fakerjs2Generate.JavascriptBetter.Decode where

import Fakerjs2Generate.JavascriptBetter.Decode.Impl
import Prelude

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2Generate.JavascriptBetter.Types (DirsTo, NameCodeSymbolNumericCode, ReplaceSymbols(..), Weighted(..), WithFunctionCall(..))
import Fakerjs2Generate.Parser.ReplaceSymbolsPattern

decodeReplaceSymbols :: forall a. Decoder a -> Decoder (ReplaceSymbols a)
decodeReplaceSymbols d j = map ReplaceSymbols (d j)

decodeWithFunctionCall :: forall a. Decoder a -> Decoder (WithFunctionCall a)
decodeWithFunctionCall d j = map WithFunctionCall (d j)

decodeReplaceSymbolsPattern :: Decoder ReplaceSymbolsPattern
decodeReplaceSymbolsPattern j = decodeNES j <#> parseReplaceSymbols

decodeWeightedOf
  :: forall a
   . Decoder a
  -> Decoder (Weighted a)
decodeWeightedOf decodeA j = map Weighted $ decodeRecordStrict
  { value: decodeA
  , weight: decodeInt
  }
  j

decodeExtensions :: Decoder { extensions :: NonEmptyArray NonEmptyString }
decodeExtensions = decodeRecordStrict
  { extensions: decodeNEAOf decodeNES
  }

decodeNameCodeSymbolNumericCode :: Decoder NameCodeSymbolNumericCode
decodeNameCodeSymbolNumericCode = decodeRecordStrict
  { name: decodeNES
  , code: decodeNES
  , symbol: decodeString
  , numericCode: decodeNES
  }

decoders :: Record (DirsTo Decoder)
decoders =
  { "airline/airline": decodeNEAOf (decodeRecordStrict { name: decodeNES, iataCode: decodeNES })
  , "airline/airplane": decodeNEAOf (decodeRecordStrict { name: decodeNES, iataTypeCode: decodeNES })
  , "airline/airport": decodeNEAOf (decodeRecordStrict { name: decodeNES, iataCode: decodeNES })
  , "animal/bear": decodeNEAOf decodeNES
  , "animal/bird": decodeNEAOf decodeNES
  , "animal/cat": decodeNEAOf decodeNES
  , "animal/cetacean": decodeNEAOf decodeNES
  , "animal/cow": decodeNEAOf decodeNES
  , "animal/crocodilia": decodeNEAOf decodeNES
  , "animal/dog": decodeNEAOf decodeNES
  , "animal/fish": decodeNEAOf decodeNES
  , "animal/horse": decodeNEAOf decodeNES
  , "animal/insect": decodeNEAOf decodeNES
  , "animal/lion": decodeNEAOf decodeNES
  , "animal/pet_name": decodeNEAOf decodeNES
  , "animal/rabbit": decodeNEAOf decodeNES
  , "animal/rodent": decodeNEAOf decodeNES
  , "animal/snake": decodeNEAOf decodeNES
  , "animal/type": decodeNEAOf decodeNES
  , "app/author": decodeNEAOf (decodeWithFunctionCall decodeNES)
  , "app/name": decodeNEAOf decodeNES
  , "app/version": decodeNEAOf decodeNES
  , "book/author": decodeNEAOf decodeNES
  , "book/format": decodeNEAOf decodeNES
  , "book/genre": decodeNEAOf decodeNES
  , "book/publisher": decodeNEAOf decodeNES
  , "book/series": decodeNEAOf decodeNES
  , "book/title": decodeNEAOf decodeNES
  , "cell_phone/common_cell_prefix": decodeNEAOf decodeInt
  , "cell_phone/formats": decodeNEAOf (decodeWithFunctionCall (decodeReplaceSymbols decodeNES))
  , "color/human": decodeNEAOf decodeNES
  , "color/space": decodeNEAOf decodeNES
  , "commerce/department": decodeNEAOf decodeNES
  , "commerce/product_description": decodeNEAOf decodeNES
  , "commerce/product_name": (decodeRecordStrict { adjective: decodeNEAOf decodeNES, material: decodeNEAOf decodeNES, product: decodeNEAOf decodeNES })
  , "company/adjective": decodeNEAOf decodeNES
  , "company/buzz_adjective": decodeNEAOf decodeNES
  , "company/buzz_noun": decodeNEAOf decodeNES
  , "company/buzz_verb": decodeNEAOf decodeNES
  , "company/category": decodeNEAOf decodeNES
  , "company/company_name": decodeNEAOf decodeNES
  , "company/descriptor": decodeNEAOf decodeNES
  , "company/legal_entity_type": decodeNEAOf decodeNES
  , "company/name_pattern": decodeNEAOf (decodeWithFunctionCall decodeNES)
  , "company/noun": decodeNEAOf decodeNES
  , "company/prefix": decodeNEAOf decodeNES
  , "company/suffix": decodeNEAOf decodeNES
  , "database/collation": decodeNEAOf decodeNES
  , "database/column": decodeNEAOf decodeNES
  , "database/engine": decodeNEAOf decodeNES
  , "database/type": decodeNEAOf decodeNES
  , "date/month": (decodeRecordStrict { abbr: decodeMaybe $ decodeNEAOf decodeNES, wide: decodeNEAOf decodeNES, abbr_context: Optional $ decodeNEAOf decodeNES, wide_context: Optional $ decodeNEAOf decodeNES })
  , "date/time_zone": decodeNEAOf decodeNES
  , "date/weekday": (decodeRecordStrict { abbr: decodeMaybe $ decodeNEAOf decodeNES, wide: decodeNEAOf decodeNES, abbr_context: Optional $ decodeNEAOf decodeNES, wide_context: Optional $ decodeNEAOf decodeNES })
  , "finance/account_type": decodeNEAOf decodeNES
  , "finance/credit_card/american_express": decodeNEAOf decodeNES
  , "finance/credit_card/diners_club": decodeNEAOf decodeNES
  , "finance/credit_card/discover": decodeNEAOf decodeNES
  , "finance/credit_card/jcb": decodeNEAOf decodeNES
  , "finance/credit_card/mastercard": decodeNEAOf decodeNES
  , "finance/credit_card/unionpay": decodeNEAOf decodeNES
  , "finance/credit_card/visa": decodeNEAOf decodeNES
  , "finance/currency": decodeNEAOf (decodeRecordStrict { name: decodeNES, code: decodeNES, symbol: decodeString, numericCode: decodeNES })
  , "finance/transaction_description_pattern": decodeNEAOf (decodeWithFunctionCall decodeNES)
  , "finance/transaction_type": decodeNEAOf decodeNES
  , "food/adjective": decodeNEAOf decodeNES
  , "food/description_pattern": decodeNEAOf (decodeWithFunctionCall decodeNES)
  , "food/dish": decodeNEAOf decodeNES
  , "food/dish_pattern": decodeNEAOf (decodeWithFunctionCall decodeNES)
  , "food/ethnic_category": decodeNEAOf decodeNES
  , "food/fruit": decodeNEAOf decodeNES
  , "food/ingredient": decodeNEAOf decodeNES
  , "food/meat": decodeNEAOf decodeNES
  , "food/spice": decodeNEAOf decodeNES
  , "food/vegetable": decodeNEAOf decodeNES
  , "hacker/abbreviation": decodeNEAOf decodeNES
  , "hacker/adjective": decodeNEAOf decodeNES
  , "hacker/ingverb": decodeNEAOf decodeNES
  , "hacker/noun": decodeNEAOf decodeNES
  , "hacker/phrase": decodeNEAOf (decodeWithFunctionCall decodeNES)
  , "hacker/verb": decodeNEAOf decodeNES
  , "internet/domain_suffix": decodeNEAOf decodeNES
  , "internet/emoji": decodeRecordStrict { smiley: decodeNEAOf decodeNES, body: decodeNEAOf decodeNES, person: decodeNEAOf decodeNES, nature: decodeNEAOf decodeNES, food: decodeNEAOf decodeNES, travel: decodeNEAOf decodeNES, activity: decodeNEAOf decodeNES, object: decodeNEAOf decodeNES, symbol: decodeNEAOf decodeNES, flag: decodeNEAOf decodeNES }
  , "internet/example_email": decodeNEAOf decodeNES
  , "internet/free_email": decodeNEAOf decodeNES
  , "internet/http_status_code": decodeRecordStrict { informational: decodeNEAOf decodeInt, success: decodeNEAOf decodeInt, redirection: decodeNEAOf decodeInt, clientError: decodeNEAOf decodeInt, serverError: decodeNEAOf decodeInt }
  , "internet/jwt_algorithm": decodeNEAOf decodeNES
  , "internet/user_agent_pattern": decodeNEAOf (decodeWithFunctionCall decodeNES)
  , "location/building_number": decodeNEAOf decodeReplaceSymbolsPattern
  , "location/city_infix": decodeNEAOf decodeNES
  , "location/city_name": decodeNEAOf decodeNES
  , "location/city_pattern": decodeNEAOf (decodeWithFunctionCall decodeNES)
  , "location/city_prefix": decodeMaybe (decodeNEAOf decodeNES)
  , "location/city_suffix": decodeMaybe (decodeNEAOf decodeString)
  , "location/common_street_suffix": decodeNEAOf decodeNES
  , "location/continent": decodeNEAOf decodeNES
  , "location/country": decodeNEAOf decodeNES
  , "location/country_code": decodeNEAOf (decodeRecordStrict { alpha2: decodeNES, alpha3: decodeNES, numeric: decodeNES })
  , "location/county": decodeNEAOf decodeNES
  , "location/direction": decodeRecordStrict { cardinal: decodeNEAOf decodeNES, cardinal_abbr: decodeNEAOf decodeNES, ordinal: decodeNEAOf decodeNES, ordinal_abbr: decodeNEAOf decodeNES }
  , "location/language": decodeNEAOf (decodeRecordStrict { name: decodeNES, alpha2: decodeNES, alpha3: decodeNES })
  , "location/postcode": decodeMaybe $ decodeNEAOf decodeReplaceSymbolsPattern
  , "location/postcode_by_state": decodeMaybe (decodeMapOf (decodeEither (decodeWithFunctionCall decodeNES) (decodeNEAOf (decodeWithFunctionCall decodeNES))))
  , "location/secondary_address": decodeNEAOf (decodeWithFunctionCall (decodeReplaceSymbols decodeNES))
  , "location/state": decodeMaybe $ decodeNEAOf decodeString
  , "location/state_abbr": decodeMaybe $ decodeNEAOf decodeNES
  , "location/street_address": decodeRecordStrict { normal: decodeWithFunctionCall decodeNES, full: decodeWithFunctionCall decodeNES }
  , "location/street_cantonese_part": decodeNEAOf decodeNES
  , "location/street_english_part": decodeNEAOf decodeNES
  , "location/street_name": decodeNEAOf decodeNES
  , "location/street_name_part": decodeNEAOf decodeNES
  , "location/street_pattern": decodeNEAOf (decodeWithFunctionCall decodeNES)
  , "location/street_prefix": decodeMaybe $ decodeNEAOf decodeNES
  , "location/street_suffix": decodeNEAOf decodeNES
  , "location/time_zone": decodeNEAOf (decodeMaybe decodeNES)
  , "lorem/word": decodeNEAOf decodeString
  , "music/album": decodeNEAOf decodeNES
  , "music/artist": decodeNEAOf decodeNES
  , "music/genre": decodeNEAOf decodeNES
  , "music/song_name": decodeNEAOf decodeNES
  , "person/bio_part": decodeNEAOf decodeNES
  , "person/bio_parts": decodeNEAOf decodeNES
  , "person/bio_pattern": decodeNEAOf (decodeWithFunctionCall decodeNES)
  , "person/bio_supporter": decodeNEAOf decodeNES
  , "person/female_title": decodeNEAOf decodeNES
  , "person/first_name": decodeRecordStrict { generic: Optional $ decodeNEAOf decodeNES, female: Optional $ decodeNEAOf decodeNES, male: Optional $ decodeNEAOf decodeNES }
  , "person/gender": decodeNEAOf decodeNES
  , "person/job_area": decodeNEAOf decodeNES
  , "person/job_descriptor": decodeNEAOf decodeNES
  , "person/job_title": decodeNEAOf decodeNES
  , "person/job_title_pattern": decodeNEAOf (decodeWithFunctionCall decodeNES)
  , "person/job_type": decodeNEAOf decodeNES
  , "person/last_name": decodeRecordStrict { generic: Optional $ decodeNEAOf decodeNES, female: Optional $ decodeNEAOf decodeNES, male: Optional $ decodeNEAOf decodeNES }
  , "person/last_name_pattern": (decodeRecordStrict { generic: Optional $ decodeNEAOf $ decodeWeightedOf $ decodeWithFunctionCall decodeNES, female: Optional $ decodeNEAOf $ decodeWeightedOf $ decodeWithFunctionCall decodeNES, male: Optional $ decodeNEAOf $ decodeWeightedOf $ decodeWithFunctionCall decodeNES })
  , "person/male_title": decodeNEAOf decodeNES
  , "person/middle_name": decodeRecordStrict { generic: Optional $ decodeNEAOf decodeNES, female: Optional $ decodeNEAOf decodeNES, male: Optional $ decodeNEAOf decodeNES }
  , "person/name": decodeNEAOf (decodeWeightedOf (decodeWithFunctionCall decodeNES))
  , "person/nobility_title_prefix": decodeNEAOf decodeNES
  , "person/prefix": decodeMaybe $ decodeRecordStrict { generic: Optional $ decodeNEAOf decodeNES, female: Optional $ decodeNEAOf decodeNES, male: Optional $ decodeNEAOf decodeNES }
  , "person/sex": decodeNEAOf decodeNES
  , "person/suffix": decodeMaybe $ decodeNEAOf decodeNES
  , "person/western_zodiac_sign": decodeNEAOf decodeNES
  , "phone_number/area_code": decodeNEAOf decodeNES
  , "phone_number/exchange_code": decodeNEAOf decodeNES
  , "phone_number/format/human": decodeNEAOf decodeNES
  , "phone_number/format/international": decodeNEAOf decodeNES
  , "phone_number/format/national": decodeNEAOf decodeNES
  , "science/chemical_element": decodeNEAOf (decodeRecordStrict { symbol: decodeNES, name: decodeNES, atomicNumber: decodeInt })
  , "science/unit": decodeNEAOf (decodeRecordStrict { name: decodeNES, symbol: decodeNES })
  , "system/directory_path": decodeNEAOf decodeNES
  , "system/mime_type": decodeMapOf (decodeRecordStrict { extensions: decodeNEAOf decodeNES })
  , "team/creature": decodeNEAOf decodeNES
  , "team/name": decodeNEAOf (decodeWithFunctionCall decodeNES)
  , "team/prefix": decodeNEAOf decodeNES
  , "team/suffix": decodeNEAOf decodeNES
  , "vehicle/bicycle_type": decodeNEAOf decodeNES
  , "vehicle/fuel": decodeNEAOf decodeNES
  , "vehicle/manufacturer": decodeNEAOf decodeNES
  , "vehicle/model": decodeNEAOf decodeNES
  , "vehicle/type": decodeNEAOf decodeNES
  , "word/adjective": decodeNEAOf decodeNES
  , "word/adverb": decodeNEAOf decodeNES
  , "word/conjunction": decodeNEAOf decodeNES
  , "word/interjection": decodeNEAOf decodeNES
  , "word/noun": decodeNEAOf decodeNES
  , "word/preposition": decodeNEAOf decodeNES
  , "word/verb": decodeNEAOf decodeNES
  }
