main :: IO()
main = do
    let res = media [2, 3]
    print res

media :: [Int] -> Float
media list = fromIntegral (soma list) / fromIntegral (leng list)

soma :: [Int] -> Int
soma [] = 0
soma (x:xs) = x + sum xs

leng :: [Int] -> Int
leng [] = 0
leng (x:xs) = 1 + leng xs
