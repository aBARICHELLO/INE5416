data Point3D = Point3D Float Float Float

toInt :: Float -> Int
toInt = round

-- sqrt ( (x2 - x1)^^2 + (y2 - y1)^^2 + (z2 - z1)^^2 )
dist :: Point3D -> Point3D -> Int
dist = (\(Point3D x1 y1 z1)  (Point3D x2 y2 z2) -> toInt ( sqrt ( (x2 - x1)**2 + (y2 - y1)**2 + (z2 - z1)**2) ))

main :: IO()
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

    print (dist (Point3D x1 y1 z1)  (Point3D x2 y2 z2))
