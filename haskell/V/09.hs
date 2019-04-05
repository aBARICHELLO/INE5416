-- /// FINISH ///
-- LIST COMPREHENSION
main :: IO()
main = do
    let list = [-5, 3, 2, 1, 0]
    let res = mapear double list
    print res

mapear :: (t -> y) -> [t] -> [t]
mapear fn (x:xs) = [fn x] ++ mapear (fn xs)

double :: Integer -> Float
double t = fromInteger t
