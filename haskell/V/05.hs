-- FINISH
main :: IO()
main = do
    print (find [2, 3] 3)

find :: [Int] -> Int -> Bool
find (x:ys) n = if n == x then iter ys else ys

iter :: [Int] -> Int
iter (x:ys) =
