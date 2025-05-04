module Fakerjs2Generate.JavascriptBetter.Decode where

import Fakerjs2Generate.JavascriptBetter.Decode.Impl
import Fakerjs2Generate.JavascriptBetter.JavascriptError
import Fakerjs2Generate.JavascriptBetter.Types
import Prelude
import Prelude

import Control.Alt ((<|>))
import Data.Array (elem)
import Data.Array as Array
import Data.Array.NonEmpty (NonEmptyArray)
import Data.Bifunctor (lmap)
import Data.Either (Either(..))
import Data.Either (Either(..))
import Data.Foldable (foldMap)
import Data.Generic.Rep (class Generic)
import Data.List as List
import Data.Map (Map)
import Data.Map as Map
import Data.Maybe (Maybe(..), maybe)
import Data.Set as Set
import Data.Show.Generic (genericShow)
import Data.String as String
import Data.String as String
import Data.String.NonEmpty (NonEmptyString)
import Data.String.NonEmpty as NonEmptyString
import Data.Symbol (class IsSymbol)
import Data.Traversable (sequence, traverse)
import Data.Variant (Variant)
import Fakerjs2Generate.Javascript (Javascript(..))
import Foreign.Object as Object
import Prim.Row as Row
import Prim.RowList as RL
import Record as Record
import Type.Prelude as Symbol
import Type.Proxy (Proxy(..))
import Unsafe.Coerce (unsafeCoerce)
import Data.Array.NonEmpty (NonEmptyArray)
import Data.Map (Map)
import Data.Maybe (Maybe)
import Data.String.NonEmpty (NonEmptyString)
import Data.Variant (Variant)

decodeReplaceSymbols :: forall a. Decoder a -> Decoder (ReplaceSymbols a)
decodeReplaceSymbols d j = map ReplaceSymbols (d j)

decodeWithFunctionCall :: forall a. Decoder a -> Decoder (WithFunctionCall a)
decodeWithFunctionCall d j = map WithFunctionCall (d j)

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
  { "cell_phone/formats": decodeNEAOf (decodeWithFunctionCall (decodeReplaceSymbols decodeNES))
  , "company/legal_entity_type": decodeNEAOf decodeNES
  , "internet/domain_suffix": decodeNEAOf decodeNES
  , "location/city_name": decodeNEAOf decodeNES
  , "location/city_pattern": decodeNEAOf (decodeWithFunctionCall decodeNES)
  , "location/postcode": decodeNEAOf ((decodeReplaceSymbols decodeNES))
  , "location/state": decodeNEAOf decodeString
  , "location/street_pattern": decodeNEAOf (decodeWithFunctionCall decodeNES)
  , "person/first_name": (decodeRecordStrict { generic: decodeNEAOf decodeNES, female: Optional (decodeNEAOf decodeNES), male: Optional (decodeNEAOf decodeNES) })
  , "person/last_name": (decodeRecordStrict { generic: decodeNEAOf decodeNES, female: Optional (decodeNEAOf decodeNES), male: Optional (decodeNEAOf decodeNES) })
  , "person/last_name_pattern": (decodeRecordStrict { generic: decodeNEAOf (decodeWeightedOf (decodeWithFunctionCall decodeNES)) })
  , "color/human": decodeNEAOf decodeNES
  , "commerce/department": decodeNEAOf decodeNES
  , "commerce/product_name": (decodeRecordStrict { adjective: decodeNEAOf decodeNES, material: decodeNEAOf decodeNES, product: decodeNEAOf decodeNES })
  , "date/month": (decodeRecordStrict { wide: decodeNEAOf decodeNES, abbr: decodeNEAOf decodeNES })
  , "date/weekday": (decodeRecordStrict { abbr: decodeMaybe (decodeNEAOf decodeNES), wide: decodeNEAOf decodeNES })
  , "location/building_number": decodeNEAOf (decodeReplaceSymbols decodeNES)
  , "location/country": decodeNEAOf decodeNES
  , "location/secondary_address": decodeNEAOf (decodeWithFunctionCall (decodeReplaceSymbols decodeNES))
  , "location/street_address": decodeRecordStrict { normal: decodeWithFunctionCall decodeNES, full: decodeWithFunctionCall decodeNES }
  , "location/street_prefix": decodeNEAOf decodeNES
  , "lorem/word": decodeNEAOf decodeString
  , "person/job_type": decodeNEAOf decodeNES
  , "person/name": decodeNEAOf (decodeWeightedOf (decodeWithFunctionCall decodeNES))
  , "person/prefix": decodeMaybe (decodeRecordStrict { generic: decodeNEAOf decodeNES, female: Optional (decodeNEAOf decodeNES), male: Optional (decodeNEAOf decodeNES) })
  , "person/suffix": decodeNEAOf decodeNES
  , "team/creature": decodeNEAOf decodeNES
  , "team/name": decodeNEAOf (decodeWithFunctionCall decodeNES)
  , "vehicle/fuel": decodeNEAOf decodeNES
  , "vehicle/manufacturer": decodeNEAOf decodeNES
  , "vehicle/model": decodeNEAOf decodeNES
  , "vehicle/type": decodeNEAOf decodeNES
  , "color/space": decodeNEAOf decodeNES
  , "database/collation": decodeNEAOf decodeNES
  , "database/engine": decodeNEAOf decodeNES
  , "database/type": decodeNEAOf decodeNES
  , "date/time_zone": decodeNEAOf decodeNES
  , "hacker/abbreviation": decodeNEAOf decodeNES
  , "internet/emoji": decodeRecordStrict { smiley: decodeNEAOf decodeNES, body: decodeNEAOf decodeNES, person: decodeNEAOf decodeNES, nature: decodeNEAOf decodeNES, food: decodeNEAOf decodeNES, travel: decodeNEAOf decodeNES, activity: decodeNEAOf decodeNES, object: decodeNEAOf decodeNES, symbol: decodeNEAOf decodeNES, flag: decodeNEAOf decodeNES }
  , "internet/http_status_code": decodeRecordStrict { informational: decodeNEAOf decodeInt, success: decodeNEAOf decodeInt, redirection: decodeNEAOf decodeInt, clientError: decodeNEAOf decodeInt, serverError: decodeNEAOf decodeInt }
  , "internet/jwt_algorithm": decodeNEAOf decodeNES
  , "internet/user_agent_pattern": decodeNEAOf (decodeWithFunctionCall decodeNES)
  , "location/country_code": decodeNEAOf (decodeRecordStrict { alpha2: decodeNES, alpha3: decodeNES, numeric: decodeNES })
  , "location/time_zone": decodeNEAOf (decodeMaybe decodeNES)
  , "system/directory_path": decodeNEAOf decodeNES
  , "system/mime_type": decodeMapOf (decodeRecordStrict { extensions: decodeNEAOf decodeNES })
  , "company/name_pattern": decodeNEAOf (decodeWithFunctionCall decodeNES)
  , "internet/free_email": decodeNEAOf decodeNES
  , "location/state_abbr": decodeNEAOf decodeNES
  , "location/street_name": decodeNEAOf decodeNES
  , "commerce/product_description": decodeNEAOf decodeNES
  , "company/adjective": decodeNEAOf decodeNES
  , "company/buzz_adjective": decodeNEAOf decodeNES
  , "company/buzz_noun": decodeNEAOf decodeNES
  , "company/buzz_verb": decodeNEAOf decodeNES
  , "company/company_name": decodeNEAOf decodeNES
  , "company/descriptor": decodeNEAOf decodeNES
  , "company/noun": decodeNEAOf decodeNES
  , "location/direction": decodeRecordStrict { cardinal: decodeNEAOf decodeNES, cardinal_abbr: decodeNEAOf decodeNES, ordinal: decodeNEAOf decodeNES, ordinal_abbr: decodeNEAOf decodeNES }
  , "person/middle_name": decodeRecordStrict { generic: decodeNEAOf decodeNES, female: Optional (decodeNEAOf decodeNES), male: Optional (decodeNEAOf decodeNES) }
  , "person/sex": decodeNEAOf decodeNES
  , "word/adjective": decodeNEAOf decodeNES
  , "word/adverb": decodeNEAOf decodeNES
  , "word/conjunction": decodeNEAOf decodeNES
  , "word/interjection": decodeNEAOf decodeNES
  , "word/noun": decodeNEAOf decodeNES
  , "word/preposition": decodeNEAOf decodeNES
  , "word/verb": decodeNEAOf decodeNES
  , "animal/type": decodeNEAOf decodeNES
  , "database/column": decodeNEAOf decodeNES
  , "location/city_prefix": decodeNEAOf decodeNES
  , "location/city_suffix": decodeNEAOf decodeNES
  , "person/nobility_title_prefix": decodeNEAOf decodeNES
  , "app/author": decodeNEAOf (decodeWithFunctionCall decodeNES)
  , "app/name": decodeNEAOf decodeNES
  , "app/version": decodeNEAOf decodeNES
  , "finance/account_type": decodeNEAOf decodeNES
  , "finance/currency": decodeNEAOf (decodeRecordStrict { name: decodeNES, code: decodeNES, symbol: decodeString, numericCode: decodeNES })
  , "finance/transaction_type": decodeNEAOf decodeNES
  , "hacker/adjective": decodeNEAOf decodeNES
  , "hacker/noun": decodeNEAOf decodeNES
  , "hacker/verb": decodeNEAOf decodeNES
  , "person/job_area": decodeNEAOf decodeNES
  , "person/job_descriptor": decodeNEAOf decodeNES
  , "airline/airline": decodeNEAOf (decodeRecordStrict { name: decodeNES, iataCode: decodeNES })
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
  , "book/author": decodeNEAOf decodeNES
  , "book/format": decodeNEAOf decodeNES
  , "book/genre": decodeNEAOf decodeNES
  , "book/publisher": decodeNEAOf decodeNES
  , "book/series": decodeNEAOf decodeNES
  , "book/title": decodeNEAOf decodeNES
  , "finance/transaction_description_pattern": decodeNEAOf (decodeWithFunctionCall decodeNES)
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
  , "hacker/ingverb": decodeNEAOf decodeNES
  , "hacker/phrase": decodeNEAOf (decodeWithFunctionCall decodeNES)
  , "internet/example_email": decodeNEAOf decodeNES
  , "location/continent": decodeNEAOf decodeNES
  , "location/county": decodeNEAOf decodeNES
  , "location/language": decodeNEAOf (decodeRecordStrict { name: decodeNES, alpha2: decodeNES, alpha3: decodeNES })
  , "music/album": decodeNEAOf decodeNES
  , "music/artist": decodeNEAOf decodeNES
  , "music/genre": decodeNEAOf decodeNES
  , "music/song_name": decodeNEAOf decodeNES
  , "person/bio_part": decodeNEAOf decodeNES
  , "person/bio_pattern": decodeNEAOf (decodeWithFunctionCall decodeNES)
  , "person/bio_supporter": decodeNEAOf decodeNES
  , "person/gender": decodeNEAOf decodeNES
  , "person/job_title_pattern": decodeNEAOf (decodeWithFunctionCall decodeNES)
  , "person/western_zodiac_sign": decodeNEAOf decodeNES
  , "science/chemical_element": decodeNEAOf (decodeRecordStrict { symbol: decodeNES, name: decodeNES, atomicNumber: decodeInt })
  , "science/unit": decodeNEAOf (decodeRecordStrict { name: decodeNES, symbol: decodeNES })
  , "vehicle/bicycle_type": decodeNEAOf decodeNES
  , "location/postcode_by_state": decodeNEAOf (decodeMaybe (decodeMapOf (decodeEither (decodeWithFunctionCall decodeNES) (decodeNEAOf (decodeWithFunctionCall decodeNES)))))
  , "location/city_infix": decodeNEAOf decodeNES
  , "location/street_cantonese_part": decodeNEAOf decodeNES
  , "location/street_english_part": decodeNEAOf decodeNES
  , "phone_number/area_code": decodeNEAOf decodeNES
  , "phone_number/exchange_code": decodeNEAOf decodeNES
  , "company/prefix": decodeNEAOf decodeNES
  , "person/female_title": decodeNEAOf decodeNES
  , "person/male_title": decodeNEAOf decodeNES
  , "company/category": decodeNEAOf decodeNES
  , "location/street_suffix": decodeNEAOf decodeNES
  , "location/common_street_suffix": decodeNEAOf decodeNES
  , "team/prefix": decodeNEAOf decodeNES
  , "location/street_name_part": decodeNEAOf decodeNES
  , "company/suffix": decodeNEAOf decodeNES
  , "cell_phone/common_cell_prefix": decodeNEAOf decodeInt
  , "team/suffix": decodeNEAOf decodeNES
  , "person/bio_parts": decodeNEAOf decodeNES
  , "person/job_title": decodeNEAOf decodeNES
  , "phone_number/format/human": decodeNEAOf decodeNES
  , "phone_number/format/international": decodeNEAOf decodeNES
  , "phone_number/format/national": decodeNEAOf decodeNES
  , "finance/credit_card/american_express": decodeNEAOf decodeNES
  , "finance/credit_card/discover": decodeNEAOf decodeNES
  , "finance/credit_card/mastercard": decodeNEAOf decodeNES
  , "finance/credit_card/visa": decodeNEAOf decodeNES
  , "finance/credit_card/diners_club": decodeNEAOf decodeNES
  , "finance/credit_card/jcb": decodeNEAOf decodeNES
  , "finance/credit_card/unionpay": decodeNEAOf decodeNES
  }
