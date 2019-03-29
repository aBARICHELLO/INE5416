main :: IO()
main = do
    op <- getLine
    xStr <- getLine
    yStr <- getLine
    let x = (read xStr :: Float)
    let y = (read yStr :: Float)
    operate op x y

operate op x y = do
    case op of
        "+" -> print (x + y)
        "-" -> print (x - y)
        "*" -> print (x * y)
        "/" -> print (x / y)
