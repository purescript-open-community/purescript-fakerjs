module Fakerjs2Generate where

import Prelude

import Control.Monad.Aff (Aff)
import Data.Array (catMaybes, filter, head, mapMaybe, snoc)
import Data.Either (Either(..))
import Data.Maybe (Maybe(..))
import Effect (Effect)
import Effect.Class (liftEffect)
import Effect.Console (logShow)
import Node.FS.Aff as FS
import Node.Glob (glob)
import Node.Path as Path
import Node.Path as NP
import Data.String (Pattern(..), split)

type Tree = TreeNode (Array (Either String Tree))

inputDir :: String
inputDir = "/home/srghma/projects/faker/src/locales"

outputDir :: String
outputDir = "/home/srghma/projects/purescript-fakerjs/src/Fakerjs2/Locales"

-- Build a tree where leaves are arrays of filenames
buildTree :: Array String -> Tree
buildTree files =
  let
    go :: Array (Array String) -> Tree
    go paths =
      let
        grouped = groupByHead paths
      in
        TreeNode
          ( map
              ( \(Tuple headPart subPaths) ->
                  case map tail subPaths of
                    [ [] ] -> Left headPart
                    more -> Right (go more)
              )
              grouped
          )

    -- Group list of path parts by their head
    groupByHead :: Array (Array String) -> Array (Tuple String (Array (Array String)))
    groupByHead paths =
      let
        heads = mapMaybe head paths
        uniqueHeads = nub heads
      in
        map (\h -> Tuple h (filter (\arr -> head arr == Just h) paths)) uniqueHeads

  in
    go (map (split (Pattern Path.sep)) files)

main :: Effect Unit
main = do
  files <- glob "**/*.ts" { cwd: inputDir }
  let filteredFiles = filter (\file -> not (file == "index.ts" || file == "metadata.ts")) files
  liftEffect $ logShow filteredFiles
  let tree = buildTree filteredFiles
  logShow tree
