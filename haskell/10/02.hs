-- f
data Expr = Val Int | Div Expr Expr | Add Expr Expr | Sub Expr Expr | Mul Expr Expr | Sqrt Expr

eval :: Expr -> Maybe Int
eval (Val n) = return n
eval (Add x y) = do
    n <- eval x
    m <- eval y
    myadd n m
eval (Sub x y) = do
    n <- eval x
    m <- eval y
    mysub n m
eval (Mul x y) = do
    n <- eval x
    m <- eval y
    mymult n m
eval (Div x y) = do
    n <- eval x
    m <- eval y
    mydiv n m
eval (Sqrt x) = do
    x <- eval x
    mysqrt x

myadd :: Int -> Int -> Maybe Int
myadd n m = Just (n + m)

mysub :: Int -> Int -> Maybe Int
mysub n m = Just (n - m)

mymult :: Int -> Int -> Maybe Int
mymult n m = Just(n * m)

mydiv :: Int -> Int -> Maybe Int
mydiv n m | m == 0 = Nothing
          | otherwise = Just (n `div` m)

mysqrt :: Int -> Maybe Int
mysqrt x | x < 0 = Nothing
         | otherwise = Just ( sqrt x)

main :: IO()
main = do
    print (eval ( Add (Val 28) (Val 2) ))
    print (eval ( Add (Sub (Val 2) (Val 2)) (Val 2) ))
    print (eval ( Mul (Div (Add (Val 28) (Val 2)) (Sub (Val 6) (Val 1))) (Val 3) ))
    print (eval ( Div (Val 2) (Val 2) ))
