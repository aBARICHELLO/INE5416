data Arvore = Null | No Int Arvore Arvore

minhaArvore :: Arvore
minhaArvore = No 52 (No 31 (No 12 Null Null) (No 35 Null Null)) (No 56 (No 55 Null Null) (No 64 Null Null))

somaElementos :: Arvore -> Int
somaElementos Null = 0
somaElementos (No n esq dir) = n + (somaElementos esq) + (somaElementos dir)

buscaElemento :: Arvore -> Int -> Bool
buscaElemento Null _ = False
buscaElemento (No n esq dir) x
    | (n == x) = True
    | otherwise = (buscaElemento esq x) || (buscaElemento dir x)

limiteSup :: Int
limiteSup = 1000 -- Define um limite superior para o maior número

minimo :: Int -> Int -> Int
minimo x y | (x < y) = x
           | otherwise = y

minimoElemento :: Arvore -> Int
minimoElemento Null = limiteSup
minimoElemento (No n esq dir) =
    minimo n (minimo (minimoElemento esq) (minimoElemento dir))

-- // A //
-- A ideia neste exercício é somar recursivamente a profundidade do nodo passado por parametro
profundidadeElemento :: Arvore -> Int -> Int
profundidadeElemento Null _ = 0
profundidadeElemento (No n esq dir) x
    | (n == x) = profundidadeElemento esq x + profundidadeElemento dir x
    | otherwise = profundidadeElemento Null x

-- Nodo -> Elemento -> Ocorrencias
profAux :: Arvore -> Int -> Int
profAux (No _ Null Null) d = d
profAux (No n esq dir) d = profAux esq (d+1) + profAux dir ()

-- // B //
-- Para contar o numero de folhas impares comparamos os elementos recursivamente
-- e adicionamos numa lista
folhasImpares :: Arvore -> [Int]
folhasImpares Null = []
folhasImpares (No n esq dir)
    | n `mod` 2 /= 0 = [n] ++ folhasImpares esq ++ folhasImpares dir
    | otherwise = folhasImpares esq ++ folhasImpares dir

-- // C //
-- Pra cada nodo é verificado o numero de ocorrencias do valor do próprio nodo
-- assim somamos uma recursão e no final teremos o numero de repetições.
elementosRepetidos :: Arvore -> Int
elementosRepetidos Null = 0
elementosRepetidos (No n esq dir) = buscaRepetidos (No n esq dir)

-- // Aux Function for elementos repetidos
buscaRepetidos :: Arvore -> [Int] -> Int
buscaRepetidos Null _ = 0
buscaRepetidos (No n esq dir) | (ocorrenciasElemento minhaArvore n > 1) = 1 + elementosRepetidos esq + elementosRepetidos dir
                              | otherwise = elementosRepetidos esq + elementosRepetidos dir

-- Numero de elementos na lista, utiizado para contar a lista
-- final de elementos repetidos
listaLength :: Int -> [Int] -> Bool
listaLength _ [] = False
listaLength x (y:ys) = if x == y then True else listaLength x ys

main = do putStrLn (show (somaElementos minhaArvore))
          putStrLn (show (buscaElemento minhaArvore 30))
          putStrLn (show (buscaElemento minhaArvore 55))
          putStrLn (show (minimoElemento minhaArvore))

