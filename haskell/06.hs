main = do
    xStr <- getLine
    yStr <- getLine
    zStr <- getLine
    let a = (read xStr :: Float)
    let b = (read yStr :: Float)
    let c = (read yStr :: Float)
    let res = validtrig a b c
    print res

validtrig a b c = if (a + b <= c) || (a + c <= b) then False else True
