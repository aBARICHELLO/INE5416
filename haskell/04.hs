main = do
    xStr <- getLine
    yStr <- getLine
    let x = (read xStr :: Bool)
    let y = (read yStr :: Bool)
    let res = xor x y
    print res

xor x y = if x < 0.0 then -x else x
