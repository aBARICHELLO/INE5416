module Matrices (
    Matrix,
    emptyMatrix,
    testMatrix,
    get
) where

data Matrix a = Mat {
    cells :: [Int],
    rows  :: Int,
    cols  :: Int
} deriving (Eq, Show)

emptyMatrix :: Matrix a
emptyMatrix = Mat [] 0 0

testMatrix :: Matrix Int
testMatrix = Mat [0 .. 8] 3 3

get :: Matrix Int -> Int -> Int -> Int
get (Mat a _ _) x y | ((x == 0) || (y == 0)) = 0
                    | otherwise = (a !! x * y - 1)
