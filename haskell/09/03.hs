fibb :: Int -> Int
fibb = fix (\f n -> if n == 0 then 0 else f (n - 1) + f (n - 2))

main :: IO()
main = do
    xStr <- getLine
    let x = (read xStr :: Int)

    print (fibb x)
