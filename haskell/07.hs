main = do
    xStr <- getLine
    let n = (read xStr :: Float)
    let res = fib a
    print res

fib a = if (a + b <= c) || (a + c <= b) then False else True
