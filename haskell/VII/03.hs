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
    (***) :: x -> x -> x

    bigger a b | a > b = a
               | otherwise = b

    smaller a b | a == (bigger a b) = b
                | otherwise = a

    -- /// A ///
    par a | a `mod` 2 == 0 = True
          | otherwise = False

    -- /// B ///
    impar a = not(par a)

    -- /// C ///
    mdc a b | mod a b == 0 = b
            | mod b a == 0 = a
            | a > b = mdc b (mod a b)
            | a < b = mdc a (mod b a)

    -- /// D ///
    primo n = null [ x | x <- [2..(n - 1)], n `mod` x == 0]

    -- /// E ///
    x === y | abso (x - y) <= 1 = True
            | otherwise = False

    -- /// F ///
    -- Checks if x equals to zero
    iszero x | x == 0 = True
             | otherwise = False

    -- /// G ///
    -- Multiplies x to y times 2
    x *** y = x * (y * 2)

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

    -- /// H ///
    print (mdc (4::Integer) (12::Integer))
    print (mdc (5:: Integer) (2::Integer))

    print (primo (4::Integer))
    print (primo (7:: Integer))

    print ((4::Integer) === (12::Integer))
    print ((4::Integer) === (5::Integer))

    print ((1::Integer) *** (1::Integer))
    print ((1::Integer) *** (2::Integer))

    -- /// 4 ///
    print (ceiling 2.2)
    print (floor 2.2)

    -- /// 5 ///
    print (abs (-2))

    -- /// 6 ///
    print (min [2] [2, 3])
    print (max 2.34 9.9)
