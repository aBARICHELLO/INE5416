main = do
    x1Str <- getLine
    y1Str <- getLine
    z1Str <- getLine
    x2Str <- getLine
    y2Str <- getLine
    z2Str <- getLine
    let x1 = (read x1Str :: Float)
    let y1 = (read y1Str :: Float)
    let z1 = (read z1Str :: Float)
    let x2 = (read x2Str :: Float)
    let y2 = (read y2Str :: Float)
    let z2 = (read z2Str :: Float)
    let res = dist x1 y1 z1 x2 y2 z1
    print res

dist x1 y1 z1 x2 y2 z2 = sqrt((x2 - x1) ^ 2 + (y2 - y1) ^ 2 + (z2 - z1) ^ 2)
