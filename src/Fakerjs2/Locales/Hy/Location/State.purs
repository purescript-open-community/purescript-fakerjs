module Fakerjs2.Locales.Hy.Location.State (state) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Fakerjs2.Types (State)
import Unsafe.Coerce (unsafeCoerce)

state :: State
state = (unsafeCoerce :: Array String -> NonEmptyArray NonEmptyString)
  [ "Արագածոտն"
  , "Արարատ"
  , "Արմավիր"
  , "Գեղարքունիք"
  , "Կոտայք"
  , "Լոռի"
  , "Շիրակ"
  , "Սյունիք"
  , "Տավուշ"
  , "Վայոց ձոր"
  , "Երևան"
  , "Ստեփանակերտ"
  , "Ասկերան"
  , "Հադրութ"
  , "Մարտակերտ"
  , "Մարտունի"
  , "Շահումյան"
  , "Շուշի"
  , "Քաշաթաղ"
  ]
