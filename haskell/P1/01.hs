func :: Integer -> Integer
func x = sumList (listOdd x)

-- Aux function to sum elements of a list
sumList :: [Integer] -> Integer
sumList [] = 0
sumList (x:xs) = x + sumList xs

-- Aux function to supply a list of the first n odd integers
listOdd :: Integer -> [Integer]
listOdd x = [ x | x <- [1..x*2], x `mod` 2 == 1 ]

main :: IO()
main = do
    print (listOdd 4)
    print (func 4)
