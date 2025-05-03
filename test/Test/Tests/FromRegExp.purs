module Test.Tests.FromRegExp
  ( spec
  ) where

import Prelude

import Control.Monad.Error.Class (throwError)
import Data.Array.NonEmpty as NEA
import Data.Maybe (Maybe, maybe)
import Data.Tuple (Tuple(..))
import Effect.Aff (Aff)
import Effect.Exception (error)
import Fakerjs2.Helpers.FromRegExp.Generate (generate)
import Fakerjs2.Helpers.FromRegExp.Types (Atom(..), Quantifier(..), TypeSafePattern(..))
import Random.LCG (mkSeed)
import Test.QuickCheck (Seed)
import Test.QuickCheck.Gen (Gen, evalGen, vectorOf)
import Test.Spec (Spec, describe, it, itOnly)
import Test.Spec.Assertions (fail, shouldEqual)
import Test.Spec.Assertions (shouldEqual)

mkTest :: forall a. Eq a => Show a => Int -> Maybe (Gen a) -> Array a -> Aff Unit
mkTest nOfRep = mkTest' nOfRep 1

unwrapGen = maybe (throwError $ error "invalid gen (maybe some range excluded too much)") pure

mkTest' :: forall a. Eq a => Show a => Int -> Int -> Maybe (Gen a) -> Array a -> Aff Unit
mkTest' nOfRep newSeed gen expected = do
  gen' <- unwrapGen gen
  mkTest'' newSeed (vectorOf nOfRep gen') expected

mkTest'' :: forall a. Eq a => Show a => Int -> Gen a -> a -> Aff Unit
mkTest'' newSeed gen' expected = evalGen gen' { newSeed: mkSeed newSeed, size: 10 } `shouldEqual` expected

spec :: Spec Unit
spec = describe "Regex-like generators" do
  it "`x{times}` => Repeat the `x` exactly `times` times." do
    let times = 3
    mkTest 10 (generate { caseSensitive: true } (NEA.singleton (PAtom (Lit 'x') (Exactly times)))) [ "xxx", "xxx", "xxx", "xxx", "xxx", "xxx", "xxx", "xxx", "xxx", "xxx" ]
    mkTest 10 (generate { caseSensitive: false } (NEA.singleton (PAtom (Lit 'x') (Exactly times)))) [ "XXx", "XXX", "Xxx", "XXX", "XXX", "XXX", "xXx", "xXx", "XXX", "xxx" ]

  it "`x{min,max}` => Repeat the `x` `min` to `max` times." do
    let min = 2
    let max = 3
    mkTest 10 (generate { caseSensitive: true } (NEA.singleton (PAtom (Lit 'x') (Between min max)))) [ "xx", "xxx", "xxx", "xxx", "xxx", "xxx", "xxx", "xxx", "xx", "xxx" ]

  it "`[x-y]` => Random char in range." do
    let x = 'a'
    let y = 'f'
    mkTest 10 (generate { caseSensitive: true } (NEA.singleton (PAtom (Range x y) Once))) [ "a", "b", "d", "f", "b", "d", "d", "d", "a", "d" ]

  it "`[x-y]{times}` => Char in range repeated n times." do
    let x = 'a'
    let y = 'f'
    let times = 3
    mkTest 10 (generate { caseSensitive: true } (NEA.singleton (PAtom (Range x y) (Exactly times)))) [ "fbb", "cea", "bda", "bbf", "ccf", "aef", "dda", "bdf", "bdd", "dad" ]

  it "`[x-y]{min,max}` => Char in range repeated min to max." do
    let x = 'a'
    let y = 'f'
    let min = 2
    let max = 4
    mkTest 10 (generate { caseSensitive: true } (NEA.singleton (PAtom (Range x y) (Between min max)))) [ "ca", "bfbb", "bbc", "ab", "abbf", "cf", "ef", "dabd", "bd", "da" ]

  it "`[^...]` => Not in list." $
    mkTest 10 (generate { caseSensitive: true } (NEA.singleton (PAtom (NotIn (NEA.cons' 'x' [ 'y', 'z' ])) Once))) [ "h", "1", "+", ")", "e", "O", "M", "7", "J", "C" ]

  it "`[-...]` => Exclude dash and digits." $
    mkTest 10 (generate { caseSensitive: true } (NEA.singleton (PAtom (NotIn (NEA.cons' '-' [ '0', '1', '2', '3', '4', '5', '6', '7', '8', '9' ])) Once))) [ "O", "P", ":", "H", "!", "j", "@", "F", "m", "F" ]

  it "`/[x-y]/i` => Case-insensitive range." $
    mkTest 10 (generate { caseSensitive: false } (NEA.singleton (PAtom (Range 'a' 'z') Once))) [ "K", "T", "M", "G", "P", "R", "d", "h", "Y", "f" ]

  it "`x?` => Optional char." do
    mkTest 100 (generate { caseSensitive: true } (NEA.singleton (PAtom (Lit 'x') Optional))) [ "", "x", "x", "x", "x", "x", "", "", "", "x", "x", "", "", "", "", "", "x", "", "", "x", "x", "x", "", "x", "x", "", "", "x", "", "x", "x", "x", "x", "x", "x", "x", "", "x", "", "", "", "x", "x", "x", "", "", "", "x", "x", "", "x", "x", "x", "", "x", "", "", "x", "", "x", "", "", "", "", "x", "", "x", "x", "", "x", "", "", "x", "", "", "", "", "x", "x", "", "", "", "", "", "", "", "", "", "x", "", "x", "x", "", "x", "", "", "", "x", "x", "x" ]

  it "`[x-y]?` => Optional range." $
    mkTest 10 (generate { caseSensitive: true } (NEA.singleton (PAtom (Range 'a' 'c') Optional))) [ "", "", "", "", "b", "a", "", "", "", "b" ]

  it "`x*` => Zero or more." $
    mkTest 10 (generate { caseSensitive: true } (NEA.singleton (PAtom (Lit 'x') ZeroOrMore))) [ "", "", "", "", "", "", "", "", "", "" ]

  it "`[x-y]*` => Zero or more in range." $
    mkTest 10 (generate { caseSensitive: true } (NEA.singleton (PAtom (Range 'a' 'd') ZeroOrMore))) [ "", "", "", "", "", "", "", "", "", "" ]

  it "`x+` => One or more." $
    mkTest 10 (generate { caseSensitive: true } (NEA.singleton (PAtom (Lit 'x') OneOrMore))) [ "xxx", "x", "x", "xx", "x", "x", "x", "x", "xx", "xxxxxxxx" ]

  it "`[x-y]+` => One or more in range." do
    mkTest 10 (generate { caseSensitive: true } (NEA.singleton (PAtom (Range 'a' 'f') OneOrMore))) [ "eb", "dbaa", "dcdfadafbadefbbcfbcfafccecffadeaebebbaacdcdfbbdbebfabbbedaaaacbcceafeeafaddcbfdfebddedaaabaceacaf", "bbfb", "f", "d", "d", "c", "ae", "dabdfbdd" ]
    mkTest 10 (generate { caseSensitive: false } (NEA.singleton (PAtom (Range 'a' 'f') OneOrMore))) [ "E", "daBC", "b", "eEAdbfABABcCACeEAeCbdabfEaaAADAbf", "b", "bF", "b", "b", "C", "AFEADFdd" ]

  it "`.` => wildcard ASCII character." $
    mkTest 10 (generate { caseSensitive: true } (NEA.singleton (PAtom Wildcard Once))) [ "M", ",", "z", "l", "Z", "J", ">", "V", "!", "7" ]

  it "`#{5}` => Five '#' characters." $
    mkTest 10 (generate { caseSensitive: true } (NEA.singleton (PAtom (Lit '#') (Exactly 5)))) [ "#####", "#####", "#####", "#####", "#####", "#####", "#####", "#####", "#####", "#####" ]

  it "`#{2,9}` => Between 2 and 9 '#' characters." $
    mkTest 10 (generate { caseSensitive: true } (NEA.singleton (PAtom (Lit '#') (Between 2 9)))) [ "##", "#######", "#########", "#######", "#######", "#########", "#######", "#########", "########", "#########" ]

  it "`[1-7]` => One digit in range." $
    mkTest 10 (generate { caseSensitive: true } (NEA.singleton (PAtom (Range '1' '7') Once))) [ "2", "3", "2", "2", "2", "1", "1", "7", "4", "7" ]

  it "`#{3}test[1-5]` => Static + dynamic pattern." $
    mkTest 10
      ( generate { caseSensitive: true }
          ( NEA.cons'
              (PAtom (Lit '#') (Exactly 3))
              [ PAtom (Lit 't') Once
              , PAtom (Lit 'e') Once
              , PAtom (Lit 's') Once
              , PAtom (Lit 't') Once
              , PAtom (Range '1' '5') Once
              ]
          )
      )
      [ "###test1", "###test3", "###test1", "###test2", "###test4", "###test3", "###test1", "###test5", "###test2", "###test4" ]

  it "`[0-9a-dmno]` => Grouped ranges." $
    mkTest 10
      ( generate { caseSensitive: true }
          ( NEA.singleton
              ( PGroup
                  ( NEA.cons'
                      (PAtom (Range '0' '9') Once)
                      [ PAtom (Range 'a' 'd') Once
                      , PAtom (Lit 'm') Once
                      , PAtom (Lit 'n') Once
                      , PAtom (Lit 'o') Once
                      ]
                  )
                  Once
              )
          )
      )
      [ "9dmno", "6cmno", "0bmno", "1amno", "9bmno", "7amno", "1dmno", "7bmno", "9bmno", "3cmno" ]

  it "`[^a-zA-Z0-8]` => Not in ranges." $
    mkTest 10
      ( generate { caseSensitive: true }
          ( NEA.singleton
              ( PAtom
                  (NotInRange (NEA.cons' (Tuple 'a' 'z') [ Tuple 'A' 'Z', Tuple '0' '8' ]))
                  Once
              )
          )
      )
      [ "(", "~", "`", "#", "#", "<", "^", "+", "[", ":" ]

  it "`[a-d0-6]{2,8}` => Mix ranges repeated." $
    mkTest 10
      ( generate { caseSensitive: true }
          ( NEA.singleton
              ( PGroup
                  ( NEA.cons'
                      (PAtom (Range 'a' 'd') Once)
                      [ PAtom (Range '0' '6') Once ]
                  )
                  (Between 2 8)
              )
          )
      )
      [ "b3b1c3a2c4", "d2d4", "b6a4b6c4c6a5", "b2a2c3a1c6c2", "c5d2d6d3b1", "c6a2", "c5a0c3a1b0d4", "b1d5c3b5", "b1d0", "b6a6b0a4d2b1b0c6" ]

  it "`[-a-z]{5}` => Dash and alpha repeated." $
    mkTest 10
      ( generate { caseSensitive: true }
          ( NEA.singleton
              ( PGroup
                  ( NEA.cons'
                      (PAtom (Lit '-') Once)
                      [ PAtom (Range 'a' 'z') Once ]
                  )
                  (Exactly 5)
              )
          )
      )
      [ "-o-j-o-w-s", "-b-a-w-g-m", "-e-q-l-o-k", "-r-t-t-f-x", "-t-x-t-c-k", "-o-v-h-y-n", "-l-l-k-y-r", "-k-e-t-l-x", "-g-l-h-r-h", "-f-h-z-y-f" ]

  it "`[A-Z0-9]{4}-[A-Z0-9]{4}` => Serial format." $
    mkTest 10
      ( generate { caseSensitive: true }
          ( NEA.cons'
              ( PGroup
                  ( NEA.cons'
                      (PAtom (Range 'A' 'Z') Once)
                      [ PAtom (Range '0' '9') Once ]
                  )
                  (Exactly 4)
              )
              [ PAtom (Lit '-') Once
              , PGroup
                  ( NEA.cons'
                      (PAtom (Range 'A' 'Z') Once)
                      [ PAtom (Range '0' '9') Once ]
                  )
                  (Exactly 4)
              ]
          )
      )
      [ "D2G2W9G2-Z2F2N9J3", "O9I5P3H6-T7X0U3R2", "W5T9J6N4-V8M9Y3R9", "O8Z0V2I7-Q6A2H5V4", "V3Z2G3X3-A2K9T3J3", "K5E2X6E0-U3U3M6I6", "R5L6V1J4-V6X8O7X7", "Q8O1R8T7-W0B0W2M0", "H5N6L5Y6-X9X5C7O4", "R5F3Z5F6-K3T8X5L0" ]

  it "`[A-Z]{5}` with case-insensitive flag => Mixed case." do
    mkTest 10 (generate { caseSensitive: true } (NEA.singleton (PAtom (Range 'A' 'Z') (Exactly 5)))) [ "OJOWS", "BAWGM", "EQLOK", "RTTFX", "TXTCK", "OVHYN", "LLKYR", "KETLX", "GLHRH", "FHZYF" ]
    mkTest 10 (generate { caseSensitive: false } (NEA.singleton (PAtom (Range 'A' 'Z') (Exactly 5)))) [ "IirGY", "xWAox", "lNbrP", "PmjwS", "lWneN", "OZtxx", "GtNOs", "YVLfr", "KTMGP", "RdhYf" ]

  it "`.`{5} => Wildcard repeated." $
    mkTest 10 (generate { caseSensitive: true } (NEA.singleton (PAtom Wildcard (Exactly 5)))) [ "t~*Pp", "Km+MZ", "2]be7", "&m9Gz", ">x|+`", "4MgSL", "u.:I<", "k-q%j", "M,zlZ", "J>V!7" ]

  it "`Joh?n` => Optional letter in string." $
    mkTest 10
      ( generate { caseSensitive: true }
          ( NEA.cons'
              (PAtom (Lit 'J') Once)
              [ PAtom (Lit 'o') Once
              , PAtom (Lit 'h') Optional
              , PAtom (Lit 'n') Once
              ]
          )
      )
      [ "John", "John", "Jon", "John", "Jon", "Jon", "Jon", "John", "John", "John" ]

  it "`ABC*DE` => C optional many times." $
    mkTest 10
      ( generate { caseSensitive: true }
          ( NEA.cons'
              (PAtom (Lit 'A') Once)
              [ PAtom (Lit 'B') Once
              , PAtom (Lit 'C') ZeroOrMore
              , PAtom (Lit 'D') Once
              , PAtom (Lit 'E') Once
              ]
          )
      )
      [ "ABDE", "ABDE", "ABDE", "ABDE", "ABDE", "ABDE", "ABDE", "ABDE", "ABDE", "ABDE" ]

  it "`bee+p` => e repeated many times." $
    mkTest 10
      ( generate { caseSensitive: true }
          ( NEA.cons'
              (PAtom (Lit 'b') Once)
              [ PAtom (Lit 'e') Once
              , PAtom (Lit 'e') OneOrMore
              , PAtom (Lit 'p') Once
              ]
          )
      )
      [ "beeeep", "beep", "beep", "beeep", "beep", "beep", "beep", "beep", "beeep", "beeeeeeeeep" ]
