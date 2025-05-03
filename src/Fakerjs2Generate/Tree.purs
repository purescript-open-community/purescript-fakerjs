module Fakerjs2Generate.Tree where

import Prelude

import Data.Array (replicate)
import Data.Array as Array
import Data.Array.NonEmpty (NonEmptyArray)
import Data.Array.NonEmpty as NonEmptyArray
import Data.Maybe (Maybe(..), fromJust)
import Data.Set.NonEmpty (NonEmptySet)
import Data.Set.NonEmpty as NonEmptySet
import Data.String as String
import Data.String.NonEmpty (NonEmptyString)
import Data.String.NonEmpty as NonEmptyString
import Partial.Unsafe (unsafePartial)

data Tree
  = Node NonEmptyString (NonEmptySet Tree)
  | Leaf NonEmptyString

instance Show Tree where
  show (Node folderName trees) = "(Node " <> show folderName <> " " <> show trees <> ")"
  show (Leaf fileName) = "(Leaf " <> show fileName <> ")"

showTrees :: NonEmptySet Tree -> String
showTrees trees =
  trees
    # Array.fromFoldable
    # map (showTreeWithIndent 0)
    # String.joinWith "\n"

showTree :: Tree -> String
showTree = showTreeWithIndent 0

showTreeWithIndent :: Int -> Tree -> String
showTreeWithIndent indentLevel tree =
  let
    (indent :: String) = String.joinWith "" $ replicate indentLevel "  "
    newline = "\n"
  in
    case tree of
      Leaf fileName ->
        indent <> "- " <> NonEmptyString.toString fileName
      Node folderName children ->
        indent <> "+ " <> NonEmptyString.toString folderName <> newline <>
          ( children
              # Array.fromFoldable
              # map (showTreeWithIndent (indentLevel + 1))
              # String.joinWith newline
          )

derive instance eqTree :: Eq Tree
derive instance ordTree :: Ord Tree

-----------------------------------------------------------

-- Build a tree where leaves are arrays of filenames
buildTrees :: NonEmptyArray (NonEmptyArray NonEmptyString) -> NonEmptySet Tree
buildTrees paths = go paths
  where
  go :: NonEmptyArray (NonEmptyArray NonEmptyString) -> NonEmptySet Tree
  go xs =
    let
      xs' = map NonEmptyArray.uncons xs :: NonEmptyArray { head :: NonEmptyString, tail :: Array NonEmptyString }
      grouped = NonEmptyArray.groupBy (\a b -> (a.head) == (b.head)) xs' :: NonEmptyArray (NonEmptyArray { head :: NonEmptyString, tail :: Array NonEmptyString })
      trees = NonEmptyArray.mapMaybe buildNode grouped :: Array Tree
    in
      unsafePartial $ fromJust $ NonEmptySet.fromFoldable trees

  buildNode :: NonEmptyArray { head :: NonEmptyString, tail :: Array NonEmptyString } -> Maybe Tree
  buildNode group = do
    let { head: name } = NonEmptyArray.head group
    let tails = NonEmptyArray.mapMaybe (\x -> NonEmptyArray.fromArray x.tail) group
    case NonEmptyArray.fromArray tails of
      Nothing -> Just (Leaf name)
      Just neTails -> Just (Node name (go neTails))

mapTree :: (NonEmptyString -> NonEmptyString) -> (NonEmptyString -> NonEmptyString) -> Tree -> Tree
mapTree mapFolderName mapFileName tree =
  case tree of
    Leaf fileName ->
      Leaf (mapFileName fileName)
    Node folderName children ->
      Node (mapFolderName folderName) (NonEmptySet.map (mapTree mapFolderName mapFileName) children)

type PathInfo =
  { fullPath :: Array NonEmptyString
  , fileName :: NonEmptyString
  }

collectLeaves :: Array NonEmptyString -> Tree -> Array PathInfo
collectLeaves pathAcc tree =
  case tree of
    Leaf name -> [ { fullPath: pathAcc, fileName: name } ]
    Node name children ->
      children
        # Array.fromFoldable
        # Array.concatMap (collectLeaves (pathAcc <> [ name ]))

pathInfoToString :: PathInfo -> String
pathInfoToString pathInfo =
  String.joinWith "/"
    $ map NonEmptyString.toString
    $ Array.snoc pathInfo.fullPath pathInfo.fileName
