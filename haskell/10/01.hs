data Expr = Val Int | Div Expr Expr | Add Expr Expr

eval :: Expr -> Maybe Int
eval (Val n) = return n
eval (Add x y) = do
    n <- eval x
    m <- eval y
    myadd n m
eval (Div x y) = do
    n <- eval x
    m <- eval y
    mydiv n m

myadd:: Int -> Int -> Int
myadd n m = n + m

mydiv :: Int -> Int -> Maybe Int
mydiv n m | m == 0 = Nothing
          | otherwise = Just (n `div` m)

main :: IO()
main = do
    print (eval ( Div (Add (Val 2) (Val 0)) (Val 2) ))
    print (eval ( Div (Val 2) (Val 2) ))
