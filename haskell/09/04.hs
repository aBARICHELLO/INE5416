delta :: Int -> Int -> Int -> Int
delta a b c = (\a b c -> (b ** 2) - 4 * a * c)

bhask :: Int -> Int -> Int -> Int
bhask a b c = (\a b c -> if delta (a b c) > 0 then ((-b + sqrt(delta(a b c))) / fromIntegral (2 * a)) else ((-b + sqrt(delta(a b c))) / fromIntegral (2 * a)))

main :: IO()
main = do
    xStr <- getLine
    yStr <- getLine
    zStr <- getLine
    let a = (read xStr :: Int)
    let b = (read yStr :: Int)
    let c = (read zStr :: Int)
    print (bhask a b c)
