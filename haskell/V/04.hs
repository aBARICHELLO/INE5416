main :: IO()
main = do
    let res = diff [2, 3]
    print res

diff :: [Int] -> Int
diff [] = 0
diff list = maior list - menor list

menor :: [Int] -> Int
menor [x] = x
menor (x:y:ys) = if x < y then menor (x:ys) else menor ys

maior :: [Int] -> Int
maior [x] = x
maior (x:y:ys) = if x > y then maior ys else maior (y:ys)
