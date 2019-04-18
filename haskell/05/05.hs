main :: IO()
main = do
    print (find [2, 2] 3)

find :: [Int] -> Int -> Bool
find [] n = False
find (x:ys) n
    | x == n = True
    | otherwise = find ys n
