module Fakerjs2.Locales.ZhCn.Science.ChemicalElement (chemical_element) where

import Data.Array.NonEmpty (NonEmptyArray)
import Data.String.NonEmpty (NonEmptyString)
import Unsafe.Coerce (unsafeCoerce)

chemical_element =
  ( unsafeCoerce
      :: Array { atomicNumber :: Int, name :: String, symbol :: String }
      -> NonEmptyArray { atomicNumber :: Int, name :: NonEmptyString, symbol :: NonEmptyString }
  )
    [ { atomicNumber: 1, name: "氢", symbol: "H" }
    , { atomicNumber: 2, name: "氦", symbol: "He" }
    , { atomicNumber: 3, name: "锂", symbol: "Li" }
    , { atomicNumber: 4, name: "铍", symbol: "Be" }
    , { atomicNumber: 5, name: "硼", symbol: "B" }
    , { atomicNumber: 6, name: "碳", symbol: "C" }
    , { atomicNumber: 7, name: "氮", symbol: "N" }
    , { atomicNumber: 8, name: "氧", symbol: "O" }
    , { atomicNumber: 9, name: "氟", symbol: "F" }
    , { atomicNumber: 10, name: "氖", symbol: "Ne" }
    , { atomicNumber: 11, name: "钠", symbol: "Na" }
    , { atomicNumber: 12, name: "镁", symbol: "Mg" }
    , { atomicNumber: 13, name: "铝", symbol: "Al" }
    , { atomicNumber: 14, name: "硅", symbol: "Si" }
    , { atomicNumber: 15, name: "磷", symbol: "P" }
    , { atomicNumber: 16, name: "硫", symbol: "S" }
    , { atomicNumber: 17, name: "氯", symbol: "Cl" }
    , { atomicNumber: 18, name: "氩", symbol: "Ar" }
    , { atomicNumber: 19, name: "钾", symbol: "K" }
    , { atomicNumber: 20, name: "钙", symbol: "Ca" }
    , { atomicNumber: 21, name: "钪", symbol: "Sc" }
    , { atomicNumber: 22, name: "钛", symbol: "Ti" }
    , { atomicNumber: 23, name: "钒", symbol: "V" }
    , { atomicNumber: 24, name: "铬", symbol: "Cr" }
    , { atomicNumber: 25, name: "锰", symbol: "Mn" }
    , { atomicNumber: 26, name: "铁", symbol: "Fe" }
    , { atomicNumber: 27, name: "钴", symbol: "Co" }
    , { atomicNumber: 28, name: "镍", symbol: "Ni" }
    , { atomicNumber: 29, name: "铜", symbol: "Cu" }
    , { atomicNumber: 30, name: "锌", symbol: "Zn" }
    , { atomicNumber: 31, name: "镓", symbol: "Ga" }
    , { atomicNumber: 32, name: "锗", symbol: "Ge" }
    , { atomicNumber: 33, name: "砷", symbol: "As" }
    , { atomicNumber: 34, name: "硒", symbol: "Se" }
    , { atomicNumber: 35, name: "溴", symbol: "Br" }
    , { atomicNumber: 36, name: "氪", symbol: "Kr" }
    , { atomicNumber: 37, name: "铷", symbol: "Rb" }
    , { atomicNumber: 38, name: "锶", symbol: "Sr" }
    , { atomicNumber: 39, name: "钇", symbol: "Y" }
    , { atomicNumber: 40, name: "锆", symbol: "Zr" }
    , { atomicNumber: 41, name: "铌", symbol: "Nb" }
    , { atomicNumber: 42, name: "钼", symbol: "Mo" }
    , { atomicNumber: 43, name: "锝", symbol: "Tc" }
    , { atomicNumber: 44, name: "钌", symbol: "Ru" }
    , { atomicNumber: 45, name: "铑", symbol: "Rh" }
    , { atomicNumber: 46, name: "钯", symbol: "Pd" }
    , { atomicNumber: 47, name: "银", symbol: "Ag" }
    , { atomicNumber: 48, name: "镉", symbol: "Cd" }
    , { atomicNumber: 49, name: "铟", symbol: "In" }
    , { atomicNumber: 50, name: "锡", symbol: "Sn" }
    , { atomicNumber: 51, name: "锑", symbol: "Sb" }
    , { atomicNumber: 52, name: "碲", symbol: "Te" }
    , { atomicNumber: 53, name: "碘", symbol: "I" }
    , { atomicNumber: 54, name: "氙", symbol: "Xe" }
    , { atomicNumber: 55, name: "铯", symbol: "Cs" }
    , { atomicNumber: 56, name: "钡", symbol: "Ba" }
    , { atomicNumber: 57, name: "镧", symbol: "La" }
    , { atomicNumber: 58, name: "铈", symbol: "Ce" }
    , { atomicNumber: 59, name: "镨", symbol: "Pr" }
    , { atomicNumber: 60, name: "钕", symbol: "Nd" }
    , { atomicNumber: 61, name: "钷", symbol: "Pm" }
    , { atomicNumber: 62, name: "钐", symbol: "Sm" }
    , { atomicNumber: 63, name: "铕", symbol: "Eu" }
    , { atomicNumber: 64, name: "钆", symbol: "Gd" }
    , { atomicNumber: 65, name: "铽", symbol: "Tb" }
    , { atomicNumber: 66, name: "镝", symbol: "Dy" }
    , { atomicNumber: 67, name: "钬", symbol: "Ho" }
    , { atomicNumber: 68, name: "铒", symbol: "Er" }
    , { atomicNumber: 69, name: "铥", symbol: "Tm" }
    , { atomicNumber: 70, name: "镱", symbol: "Yb" }
    , { atomicNumber: 71, name: "镥", symbol: "Lu" }
    , { atomicNumber: 72, name: "铪", symbol: "Hf" }
    , { atomicNumber: 73, name: "钽", symbol: "Ta" }
    , { atomicNumber: 74, name: "钨", symbol: "W" }
    , { atomicNumber: 75, name: "铼", symbol: "Re" }
    , { atomicNumber: 76, name: "锇", symbol: "Os" }
    , { atomicNumber: 77, name: "铱", symbol: "Ir" }
    , { atomicNumber: 78, name: "铂", symbol: "Pt" }
    , { atomicNumber: 79, name: "金", symbol: "Au" }
    , { atomicNumber: 80, name: "汞", symbol: "Hg" }
    , { atomicNumber: 81, name: "铊", symbol: "Tl" }
    , { atomicNumber: 82, name: "铅", symbol: "Pb" }
    , { atomicNumber: 83, name: "铋", symbol: "Bi" }
    , { atomicNumber: 84, name: "钋", symbol: "Po" }
    , { atomicNumber: 85, name: "砹", symbol: "At" }
    , { atomicNumber: 86, name: "氡", symbol: "Rn" }
    , { atomicNumber: 87, name: "钫", symbol: "Fr" }
    , { atomicNumber: 88, name: "镭", symbol: "Ra" }
    , { atomicNumber: 89, name: "锕", symbol: "Ac" }
    , { atomicNumber: 90, name: "钍", symbol: "Th" }
    , { atomicNumber: 91, name: "镤", symbol: "Pa" }
    , { atomicNumber: 92, name: "铀", symbol: "U" }
    , { atomicNumber: 93, name: "镎", symbol: "Np" }
    , { atomicNumber: 94, name: "钚", symbol: "Pu" }
    , { atomicNumber: 95, name: "镅", symbol: "Am" }
    , { atomicNumber: 96, name: "锔", symbol: "Cm" }
    , { atomicNumber: 97, name: "锫", symbol: "Bk" }
    , { atomicNumber: 98, name: "锎", symbol: "Cf" }
    , { atomicNumber: 99, name: "锿", symbol: "Es" }
    , { atomicNumber: 100, name: "镄", symbol: "Fm" }
    , { atomicNumber: 101, name: "钔", symbol: "Md" }
    , { atomicNumber: 102, name: "锘", symbol: "No" }
    , { atomicNumber: 103, name: "铹", symbol: "Lr" }
    , { atomicNumber: 104, name: "𬬻", symbol: "Rf" }
    , { atomicNumber: 105, name: "𬭊", symbol: "Db" }
    , { atomicNumber: 106, name: "𬭳", symbol: "Sg" }
    , { atomicNumber: 107, name: "𬭛", symbol: "Bh" }
    , { atomicNumber: 108, name: "𬭶", symbol: "Hs" }
    , { atomicNumber: 109, name: "鿏", symbol: "Mt" }
    , { atomicNumber: 110, name: "𫟼", symbol: "Ds" }
    , { atomicNumber: 111, name: "𬬭", symbol: "Rg" }
    , { atomicNumber: 112, name: "鿔", symbol: "Cn" }
    , { atomicNumber: 113, name: "鿭", symbol: "Nh" }
    , { atomicNumber: 114, name: "𫓧", symbol: "Fl" }
    , { atomicNumber: 115, name: "镆", symbol: "Mc" }
    , { atomicNumber: 116, name: "𫟷", symbol: "Lv" }
    , { atomicNumber: 117, name: "鿬", symbol: "Ts" }
    , { atomicNumber: 118, name: "鿫", symbol: "Og" }
    ]
