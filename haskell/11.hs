main :: IO()
main = do
    xStr <- getLine
    yStr <- getLine
    let x = (read xStr :: Integer)
    let y = (read yStr :: Integer)
    let res = euc(x, y)
    print res

euc(x, y) = if y == 0 then (x, x) else (y, x `mod` y)
