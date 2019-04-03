main :: IO()
main = do
    print (find [0, 3, 3, 3] 3)

find :: [Int] -> Int -> Int
find [] n = 0
find (x:xs) n
    | x == n = 1 + find xs n
    | otherwise = find xs n
