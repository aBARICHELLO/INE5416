-- Finish
main = do
    xStr <- getLine
    yStr <- getLine
    let x = (read xStr :: Bool)
    let y = (read yStr :: Bool)
    let res = xor x y
    print res

xor x y = (x && not x) || (y && not y)
