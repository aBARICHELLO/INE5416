alunos :: [(Int, String, Float)]
alunos = [(1, "Ana", 3.4), (2, "Bob", 6.7), (3, "Tom", 7.6)]

getNome :: (Int, String, Float) -> String
getNome (a,b,c) = b

getPrimeiroAluno :: [(Int, String, Float)] -> (Int, String, Float)
getPrimeiroAluno (a:_) = a

aprovados ::  [(Int, String, Float)] -> [String]
aprovados l1 = map aprovado l1

-- ////////////////// A //////////////////
aprovado :: (Int, String, Float) -> String
aprovado (_, n, f)
    | f >= 6.0 = n
    | otherwise = ""

-- ////////////////// B //////////////////
-- aprovados2 ::  [(Int, String, Float)] -> [String]

-- ////////////////// C //////////////////
gerarPares :: [t] -> [u] -> [(t,u)]
gerarPares l1 l2 = [(a,b) | a <- l1, b <- l2]

main = do
    print (getPrimeiroAluno alunos)
    print (aprovados alunos)
