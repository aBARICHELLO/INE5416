data Ponto = Ponto { x :: Float, y :: Float}
data Circulo = Circulo Ponto Float

meuCirculo :: Circulo
meuCirculo = (Circulo (Ponto 0 0) 10)

meusPontos :: [Ponto]
meusPontos = [(Ponto 1 2), (Ponto 3 4), (Ponto 10 10)]

-- // A //
-- Aqui verificamos se o ponto está no circulo de acordo com a fórmula matemática para isso
dentro :: Circulo -> [Ponto] -> [Ponto]
dentro (Circulo centro raio) [] = []
dentro (Circulo (Ponto centro_x centro_y) raio) (a:b)   | ((x a) - centro_x)^2 + ((y a) - centro_y)^2 <= raio^2 = [] ++ dentro (Circulo (Ponto centro_x centro_y) raio) b
                                                        | otherwise = [] ++  dentro (Circulo (Ponto centro_x centro_y) raio) b

--interseccao :: [Circulo] -> Int

main = do
    putStrLn (show (dentro meuCirculo meusPontos))