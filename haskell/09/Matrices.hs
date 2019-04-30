module Matrices (
    Matrix,
    emptyMatrix,
    identityMatrix,
    get,
    elementSum,
    sumMatrix
) where

data Matrix a = Mat {
    cells :: [Int],
    rows  :: Int,
    cols  :: Int
} deriving (Eq, Show)

emptyMatrix :: Matrix a
emptyMatrix = Mat [] 0 0

-- 2x2 identity matrix
identityMatrix :: Matrix Int
identityMatrix = Mat [1, 0, 0, 1] 2 2

-- Get an element from coordinate x y
-- NOTE: Coordinates start at (1,1)
get :: Matrix Int -> Int -> Int -> Int
get (Mat a row col) x y = a !! (x * row + y) -- (i*n+j)

-- Returns the sum of all elements in the matrix array
elementSum :: Matrix Int -> Int
elementSum (Mat a _ _) = sumList a

-- Aux function of elementSum
sumList :: [Int] -> Int
sumList [] = 0
sumList (x:xs) = x + sumList xs

-- Sum two matrices
sumMatrix :: Matrix Int -> Matrix Int -> Matrix Int
sumMatrix (Mat a0 x0 y0) (Mat a1 x1 y1)
    | (x0 /= x1) || (y0 /= y1) = emptyMatrix
    | otherwise = Mat (auxSum a0 a1) x0 y0

-- Aux function of sumMatrix
auxSum :: [Int] -> [Int] -> [Int]
auxSum [] [] = []
auxSum (x:xs) (y:ys) = [x + y] ++ auxSum xs ys

-- isMagicSquare :: Matrix Int -> Bool
-- isMagicSquare (Mat a x y) =

-- hasRepeatedElements :: Matrix Int -> Bool

