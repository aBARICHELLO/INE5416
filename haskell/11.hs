-- incomplete
main :: IO()
main = do
    xStr <- getLine
    yStr <- getLine
    let x = (read xStr :: Float)
    let y = (read yStr :: Float)
    let res = euc (x, y)
    print res

euc (x, y) =
