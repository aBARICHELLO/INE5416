import Matrices
import Reference

main :: IO()
main = do
    let string = (intMatrixToString (sumSigns signMatrixEx32))
    print (string)

    case readGrid string of
        Nothing   -> putStrLn "Invalid input"
        Just grid -> case solve grid of
            Nothing    -> putStrLn "No solution found"
            Just grid' -> putStrLn $ showGrid grid'
