main :: IO()
main = do
    let list = [-5, -3, 2, -1, 0, 5]
    let res = mapear greaterzero list
    print res

mapear :: (t -> Bool) -> [t] -> [t]
mapear fn list = [ x | x <- list, fn x == True ]

greaterzero :: Integer -> Bool
greaterzero t = if t > 0 then True else False
