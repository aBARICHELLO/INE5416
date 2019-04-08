main :: IO()
main = do
    let list = [-5, 3, 2, 1, 0]
    let res = mapear double list
    print res

mapear :: (t -> y) -> [t] -> [y]
mapear fn list = [ fn x | x <- list ]

double :: Integer -> Integer
double t = t * 2
