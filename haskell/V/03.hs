main :: IO()
main = do
    let list = [-5, 3, 2, 1, 0]
    let res = menor list
    print res

menor :: [Int] -> Int
menor [x] = x
menor (x:y:ys) = if x < y then menor (x:ys) else menor ys
