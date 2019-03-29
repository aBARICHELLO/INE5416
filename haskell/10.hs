main :: IO()
main = do
    xStr <- getLine
    yStr <- getLine
    zStr <- getLine
    let x = (read xStr :: Float)
    let y = (read yStr :: Float)
    let z = (read zStr :: Float)
    let res= maxx x y z
    print res

maxx x y z = if (x > y) && (x > z) then x else if (y > x) && (y > z) then y else z
