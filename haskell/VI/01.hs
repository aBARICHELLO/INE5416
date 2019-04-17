type Nome = String
type Idade = Int
type Linguagem = String
type Nota = Float

type Aluno = (Nome, Idade, Linguagem, Nota, Nota, Nota)
type Pessoa = (Nome, Idade, Linguagem)

getAluno :: Int -> Aluno
getAluno 0 = ("Bob", 25, "Haskell", 6.0, 6.0, 6.0)
getAluno 1 = ("Clara", 90, "Prolog", 5.0, 5.0, 5.0)

getNameAluno :: Aluno -> String
getNameAluno (a, _, _, _, _, _) = a

average :: Int -> Float
average n = averageAluno (getAluno n)

averageAluno :: Aluno -> Float
averageAluno (_, _, _, x, y, z) = (x + y + z) / fromIntegral 3

averageAll :: Int -> Float
averageAll x = x + average x

main :: IO()
main = do
    print (getAluno 0)
    let student = getAluno 0
    print (getNameAluno student)
    print (average 0)
    print (averageAll 0)
