module Lib where

import Data.List


data Row = MkRow [Int]
    deriving (Eq)
instance Show Row where
    show (MkRow xs) = show xs

data Board = MkBoard [Row]
    deriving (Eq)
instance Show Board where
    show (MkBoard xss) = intercalate "\n" [show xs | MkRow xs <- xss]

data Direction = L | R | U | D


getScore :: Board -> Int
getScore (MkBoard xss) = maximum [maximum xs | MkRow xs <- xss]

hasLost :: Board -> Bool
hasLost = undefined

moveRow :: Row -> Direction -> Row
moveRow (MkRow xs) L = undefined
moveRow (MkRow xs) R = undefined

move :: Board -> Direction -> Board
move = undefined
