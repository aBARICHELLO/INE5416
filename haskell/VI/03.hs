data Point = Point2D Float Float
    | Point3D Float Float Float

dist :: Point -> Point -> Float
dist (Point2D x1 y1) (Point2D x2 y2) = sqrt ((x2 - x1)^^2 + (y2 - y1)^^2)
dist (Point3D x1 y1 z1) (Point3D x2 y2 z2) = sqrt ((x2 - x1)^^2 + (y2 - y1)^^2 + (z2 - z1)^^2)

main :: IO()
main = do
    print (dist (Point2D 2.0 3.0) (Point2D 3.0 4.0))
    print (dist (Point3D 2.0 2.0 2.0) (Point3D 3.0 3.0 3.0))
