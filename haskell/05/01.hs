main :: IO()
main = do
    let list = [1, 2, 3]
    let res = soma list
    print res

soma :: [Int] -> Int
soma [] = 0
soma (x:xs) = x + sum xs
