type Point3D = (Int, Int, Int)

dist :: Point3D -> Point3D -> Int
dist (Point3D x1 y1 z1) (Point3D x2 y2 z2) = (\x1 y1 z1 x2 y2 z2 -> sqrt ((x2 - x1)^^2 + (y2 - y1)^^2 + (z2 - z1)^^2))

main :: IO()
main = do
    x1Str <- getLine
    y1Str <- getLine
    z1Str <- getLine

    x2Str <- getLine
    y2Str <- getLine
    z2Str <- getLine

    let x1 = (read x1Str :: Int)
    let y1 = (read y1Str :: Int)
    let z1 = (read z1Str :: Int)

    let x2 = (read x2Str :: Int)
    let y2 = (read y2Str :: Int)
    let z2 = (read z2Str :: Int)

    print (dist (Point3D x1 y1 z1) (Point3D x2 y2 z2))
