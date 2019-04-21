lambda :: [Integer] -> [Bool]
lambda = (\(x:xs) -> )

lambdaEach :: Integer -> [Bool] -> [Bool]
lambdaEach = (\x bool -> if x `mod` 2 == 0 then bool ++ [True] else bool ++ [False])

main :: IO()
main = do
    let list = [1::Integer, 2::Integer, 3::Integer]
    print (map (lambda list))

-- f
