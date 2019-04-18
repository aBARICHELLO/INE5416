module Precedence where

-- Fixity em Haskell possui três tipos, pode ser infxl, infxr ou infix.
-- Tais tipos representam associatividade à esquerda, nenhuma associatividade e
-- associatividade à direita, respectivamente.

class (Integral x) => MeuInt x where
    (***) :: x -> x -> x
    (///) :: x -> x -> x

    x *** y = (x * y) + 2
    x /// y = (x * y) - 2

instance MeuInt Integer
-- *** terá prioridade de execução sobre o operador ///
infixl 9 ***
infixl 0 ///

main = do
        print ((1::Integer) *** (1::Integer))
        print ((3::Integer) /// (3::Integer))

        -- Cada operador em Haskell possui sua ordem de precedência que é
        -- representada através de um numero entre 0 a 9, sendo os menores
        -- os que serão executados primeiro por ter maior prioridade.

        -- A operação abaixo resulta em
        -- 4 /// 3::Integer
        -- que é igual a 10
        -- Resultaria em 6 se o operador /// tivesse maior prioridade que ***
        print ((1::Integer) *** (2::Integer) /// (3::Integer))

-- Através do comando :info pela interface ghci é possível ver
-- o valor da ordem de precedência de um operador, ex:
-- *Main> :info +
-- class Num a where
--   (+) :: a -> a -> a
--   ...
--    -- Defined in ‘GHC.Num’
