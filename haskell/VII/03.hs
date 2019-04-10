-- FINISH
-- MDC
class (Integral x) => MeuInt x where
    bigger :: x -> x -> x
    smaller :: x -> x -> x
    primo :: x -> Bool
    par :: x -> Bool
    impar :: x -> Bool
    mdc :: x -> x -> x
    (===) :: x -> x -> Bool
    iszero :: x -> Bool
    (***) :: x -> x

    bigger a b | a > b = a
               | otherwise = b

    smaller a b | a == (bigger a b) = b
                | otherwise = a

    par a | a `mod` 2 == 0 = True
          | otherwise = False

    impar a = not(par a)

    x === y | abso (x - y) <= 1 = True
    | otherwise = False

    -- Checks if x equals to zero
    iszero x | x == 0 = True
             | otherwise = False

    -- Elevates x to the power of y
    x *** y |

instance MeuInt Integer
instance MeuInt Int

abso x = if x < 0 then -x else x

main :: IO()
main = do
    print (bigger (4::Integer) (12::Integer))
    print (smaller (4:: Integer) (12::Integer))

    print (par (4::Integer))
    print (par (3::Integer))

    print (impar (4::Integer))
    print (impar (3::Integer))

    -- print (mdc (4::Integer) (12::Integer))
    -- print (mdc (4:: Integer) (12::Integer))

    -- print (primo (4::Integer))
    -- print (primo (7:: Integer))

    print ((4::Integer) === (12::Integer))
    print ((4:: Integer) === (5::Integer))