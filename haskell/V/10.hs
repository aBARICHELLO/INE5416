-- /// FINISH ///
main :: IO()
main = do
    let list = [-5, 3, 2, 1, 0]
    let res = filtar double list
    print res

filtar :: (t -> Bool) -> [t] -> [t]
filtar fn (x:xs) = fn x ++ filtar (double xs)

double :: Integer -> Integer
double t = t * 2
