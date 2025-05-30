module Fakerjs2.Locales.En.Commerce.ProductDescription (product_description) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

product_description = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Discover the {{animal.type}}-like agility of our {{commerce.product}}, perfect for {{word.adjective}} users"
  , "Discover the {{word.adjective}} new {{commerce.product}} with an exciting mix of {{commerce.productMaterial}} ingredients"
  , "Ergonomic {{commerce.product}} made with {{commerce.productMaterial}} for all-day {{word.adjective}} support"
  , "Experience the {{color.human}} brilliance of our {{commerce.product}}, perfect for {{word.adjective}} environments"
  , "Featuring {{science.chemical_element.name}}-enhanced technology, our {{commerce.product}} offers unparalleled {{word.adjective}} performance"
  , "Innovative {{commerce.product}} featuring {{word.adjective}} technology and {{commerce.productMaterial}} construction"
  , "Introducing the {{location.country}}-inspired {{commerce.product}}, blending {{word.adjective}} style with local craftsmanship"
  , "New {{color.human}} {{commerce.product}} with ergonomic design for {{word.adjective}} comfort"
  , "New {{commerce.product}} model with {{number.int({\"min\": 1, \"max\": 100})}} GB RAM, {{number.int({\"min\": 1, \"max\": 1000})}} GB storage, and {{word.adjective}} features"
  , "Our {{animal.type}}-friendly {{commerce.product}} ensures {{word.adjective}} comfort for your pets"
  , "Our {{food.adjective}}-inspired {{commerce.product}} brings a taste of luxury to your {{word.adjective}} lifestyle"
  , "Professional-grade {{commerce.product}} perfect for {{word.adjective}} training and recreational use"
  , "Savor the {{food.adjective}} essence in our {{commerce.product}}, designed for {{word.adjective}} culinary adventures"
  , "Stylish {{commerce.product}} designed to make you stand out with {{word.adjective}} looks"
  , "The sleek and {{word.adjective}} {{commerce.product}} comes with {{color.human}} LED lighting for smart functionality"
  , "The {{color.human}} {{commerce.product}} combines {{location.country}} aesthetics with {{science.chemical_element.name}}-based durability"
  , "The {{company.catchPhrase}} {{commerce.product}} offers reliable performance and {{word.adjective}} design"
  , "The {{person.firstName}} {{commerce.product}} is the latest in a series of {{word.adjective}} products from {{company.name}}"
  , "{{commerce.productAdjective}} {{commerce.product}} designed with {{commerce.productMaterial}} for {{word.adjective}} performance"
  , "{{company.name}}'s most advanced {{commerce.product}} technology increases {{word.adjective}} capabilities"
  ]
