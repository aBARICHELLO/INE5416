module Matrices where

-- data Cell = Int | [Int] deriving (Show, Eq)
-- type Row = [Cell]
-- type Grid = [Row]

data Matrix a = Mat {
    cells :: [a],
    rows  :: Int,
    cols  :: Int
} deriving (Eq, Show)

emptyMatrix :: Matrix a
emptyMatrix = Mat [] 0 0

-- 2x2 identity matrix
identityMatrix :: Matrix Int
identityMatrix = Mat [1, 0, 0, 1] 2 2

-- Get an element from coordinate x y
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

-- Sign matrices have the following notation
-- 0 null
-- 1 <
-- 2 >

-- Sign matrix representation of Comparative sudoku No 3
signMatrixEx3 :: Matrix (Int, Int, Int, Int)
signMatrixEx3 = Mat [(0, 0, 2, 2), (1, 0, 0, 1), (0, 0, 2, 2), (1, 0, 0, 1),
    (0, 1, 2, 0), (1, 2, 0, 0), (0, 1, 1, 0), (2, 2, 0, 0),
    (0, 0, 1, 1), (2, 0, 0, 2), (0, 0, 1, 1), (2, 0, 0, 2),
    (0, 2, 1, 0), (2, 1, 0, 0), (0, 2, 2, 0), (1, 1, 0, 0)] 4 4

-- Sign matrix representation of Comparative sudoku No 3
signMatrixEx32 :: Matrix (Int, Int, Int, Int)
signMatrixEx32 = Mat [(0, 0, 2, 2), (1, 0, 0, 2), (0, 0, 1, 1), (2, 0, 0, 1),
    (0, 1, 2, 0), (1, 1, 0, 0), (0, 2, 1, 0), (2, 2, 0, 0),
    (0, 0, 1, 1), (2, 0, 0, 2), (0, 0, 1, 1), (2, 0, 0, 2),
    (0, 2, 2, 0), (1, 1, 0, 0), (0, 2, 2, 0), (1, 1, 0, 0)] 4 4

-- Sign matrix representation of Comparative sudoku No 2
signMatrixEx2 :: Matrix (Int, Int, Int, Int)
signMatrixEx2 = Mat [(0, 0, 1, 1), (2, 0, 0, 1), (0, 0, 2, 2), (1, 0, 0, 2),
    (0, 2, 2, 0), (1, 2, 0, 0), (0, 1, 1, 0), (2, 1, 0, 0),
    (0, 0, 1, 2), (2, 0, 0, 2), (0, 0, 2, 1), (1, 0, 0, 1),
    (0, 1, 2, 0), (1, 1, 0, 0), (0, 2, 1, 0), (2, 2, 0, 0)] 4 4

-- Return a matrix with the sum of all 4-tuple elements
sumSigns :: Matrix (Int, Int, Int, Int) -> Matrix Int
sumSigns (Mat a x y) = (Mat (generateSumList a) x y)

generateSumList :: [(Int, Int, Int, Int)] -> [Int]
generateSumList [] = []
generateSumList (x:xs) = ((sumSingTuple x) ++ generateSumList(xs))

-- Sum of tuple elements
sumSingTuple :: (Int, Int, Int, Int) -> [Int]
sumSingTuple (a, b, c, d) = [a + b + c + d]

intMatrixToString :: Matrix Int -> String
intMatrixToString (Mat a _ _) = intListToString a

intListToString :: [Int] -> String
intListToString [] = []
intListToString (a:b) = (show a) ++ (intListToString b)
