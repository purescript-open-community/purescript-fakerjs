module Faker.Location
  ( Language
  , ZipCodeOptions
  , StreetAddressOptions
  , StateOptions
  , LatitudeOptions
  , LongitudeOptions
  , DirectionOptions
  , NearbyGPSCoordinateOptions
  , zipCode
  , city
  , buildingNumber
  , street
  , streetAddress
  , secondaryAddress
  , county
  , country
  , continent
  , countryCode
  , state
  , latitude
  , longitude
  , direction
  , cardinalDirection
  , ordinalDirection
  , nearbyGPSCoordinate
  , timeZone
  , language
  ) where

import Prelude

import Data.Maybe (Maybe)
import Faker.Core.Types
import Foreign (Foreign)
import Foreign.Object (Object)

-- | Represents a language with its full name, 2 character ISO 639-1 code, and 3 character ISO 639-2 code.
type Language =
  { name :: String
  , alpha2 :: String
  , alpha3 :: String
  }

-- | Options for generating a zip code
type ZipCodeOptions =
  { state :: Maybe String
  , format :: Maybe String
  }

-- | Options for generating a street address
type StreetAddressOptions =
  { useFullAddress :: Boolean
  }

-- | Options for generating a state
type StateOptions =
  { abbreviated :: Boolean
  }

-- | Options for generating a latitude
type LatitudeOptions =
  { max :: Number
  , min :: Number
  , precision :: Int
  }

-- | Options for generating a longitude
type LongitudeOptions =
  { max :: Number
  , min :: Number
  , precision :: Int
  }

-- | Options for generating a direction
type DirectionOptions =
  { abbreviated :: Boolean
  }

-- | Options for generating a nearby GPS coordinate
type NearbyGPSCoordinateOptions =
  { origin :: Maybe (Array Number)
  , radius :: Number
  , isMetric :: Boolean
  }

-- | Type for country code variant
data CountryCodeVariant
  = Alpha2
  | Alpha3
  | Numeric

foreign import city :: Faker -> String
foreign import buildingNumber :: Faker -> String
foreign import street :: Faker -> String
foreign import secondaryAddress :: Faker -> String
foreign import county :: Faker -> String
foreign import country :: Faker -> String
foreign import continent :: Faker -> String
foreign import countryCode :: Faker -> String -> String
foreign import timeZone :: Faker -> String
foreign import language :: Faker -> Language

-- | Foreign function interface helpers
foreign import zipCodeImpl :: Faker -> Foreign -> String
foreign import streetAddressImpl :: Faker -> Foreign -> String
foreign import stateImpl :: Faker -> Foreign -> String
foreign import latitudeImpl :: Faker -> Foreign -> Number
foreign import longitudeImpl :: Faker -> Foreign -> Number
foreign import directionImpl :: Faker -> Foreign -> String
foreign import cardinalDirectionImpl :: Faker -> Foreign -> String
foreign import ordinalDirectionImpl :: Faker -> Foreign -> String
foreign import nearbyGPSCoordinateImpl :: Faker -> Foreign -> Array Number

-- | Generates random zip code from specified format
zipCode :: Faker -> Maybe ZipCodeOptions -> String
zipCode faker maybeOptions = zipCodeImpl faker (toForeign maybeOptions defaultZipCodeOptions)
  where
  defaultZipCodeOptions = { state: Nothing, format: Nothing }

-- | Generates a random localized city name
city :: Faker -> String
city = cityImpl

-- | Generates a random building number
buildingNumber :: Faker -> String
buildingNumber = buildingNumberImpl

-- | Generates a random localized street name
street :: Faker -> String
street = streetImpl

-- | Generates a random localized street address
streetAddress :: Faker -> Maybe StreetAddressOptions -> String
streetAddress faker maybeOptions = streetAddressImpl faker (toForeign maybeOptions defaultStreetAddressOptions)
  where
  defaultStreetAddressOptions = { useFullAddress: false }

-- | Generates a random localized secondary address
secondaryAddress :: Faker -> String
secondaryAddress = secondaryAddressImpl

-- | Returns a random localized county
county :: Faker -> String
county = countyImpl

-- | Returns a random country name
country :: Faker -> String
country = countryImpl

-- | Returns a random continent name
continent :: Faker -> String
continent = continentImpl

-- | Returns a random ISO_3166-1 country code
countryCode :: Faker -> CountryCodeVariant -> String
countryCode faker variant = countryCodeImpl faker (variantToString variant)
  where
  variantToString :: CountryCodeVariant -> String
  variantToString Alpha2 = "alpha-2"
  variantToString Alpha3 = "alpha-3"
  variantToString Numeric = "numeric"

-- | Returns a random localized state
state :: Faker -> StateOptions -> String
state faker options = stateImpl faker (toForeign options)

-- | Generates a random latitude
latitude :: Faker -> LatitudeOptions -> Number
latitude faker options = latitudeImpl faker (toForeign options)

-- | Generates a random longitude
longitude :: Faker -> LongitudeOptions -> Number
longitude faker options = longitudeImpl faker (toForeign options)

-- | Returns a random direction
direction :: Faker -> DirectionOptions -> String
direction faker options = directionImpl faker (toForeign options)

-- | Returns a random cardinal direction
cardinalDirection :: Faker -> DirectionOptions -> String
cardinalDirection faker options = cardinalDirectionImpl faker (toForeign options)

-- | Returns a random ordinal direction
ordinalDirection :: Faker -> DirectionOptions -> String
ordinalDirection faker options = ordinalDirectionImpl faker (toForeign options)

-- | Generates a random GPS coordinate within the specified radius from the given coordinate
nearbyGPSCoordinate :: Faker -> NearbyGPSCoordinateOptions -> Array Number
nearbyGPSCoordinate faker options = nearbyGPSCoordinateImpl faker (toForeign options)

-- | Returns a random IANA time zone relevant to this locale
timeZone :: Faker -> String
timeZone = timeZoneImpl

-- | Returns a random spoken language
language :: Faker -> Language
language = languageImpl
