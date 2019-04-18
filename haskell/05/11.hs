-- FINISH
--
--
--

main :: IO()
main = do
    let list = [-5, -3, 2, -1, 0, 5]
    let res = primeiros 2 list
    print res

primeiros :: Int -> [t] -> [t]
primeiros 0 list = list
primeiros n (x:xs) = [x] ++ primeiros (n - 1) xs
