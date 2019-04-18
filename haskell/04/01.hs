main = do
    xStr <- getLine
    yStr <- getLine
    let x = (read xStr :: Float)
    let y = (read yStr :: Float)
    let res = expo x y
    print res

expo x y = x ** y
