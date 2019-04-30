data Point = Point2D Float Float deriving (Show)

dist :: Point -> Point -> Float
dist (Point2D x1 y1) (Point2D x2 y2) = sqrt ((x2 - x1)^^2 + (y2 - y1)^^2)

formaTriangulo :: Point -> Point -> Point -> Float
formaTriangulo (Point2D x0 y0) (Point2D x1 y1) (Point2D x2 y2) = area where
    a = dist (Point2D x0 y0) (Point2D x1 y1)
    b = dist (Point2D x1 y1) (Point2D x2 y2)
    c = dist (Point2D x0 y0) (Point2D x2 y2)
    res = (a + b <= c) || (a + c <= b)
    area = if res then 2 else 1

-- validtrig a b c = if (a + b <= c) || (a + c <= b) then False else True
main :: IO()
main = do
    print ( formaTriangulo (Point2D 2.0 2.0) (Point2D 4.0 4.0) (Point2D 1.0 1.0) )

--f
