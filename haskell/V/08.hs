main :: IO()
main = do
    let list = [-5, 3, 2, 1, 0]
    let res = inverte list
    print res

inverte :: [t] -> [t]
inverte [x] = [x]
inverte (x:xs) = inverte xs ++ [x]
