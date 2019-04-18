data Forma = Circulo Float
    | Retangulo Float Float
    | Triangulo Float Float

area :: Forma -> Float
area (Circulo r) = pi * r * r
area (Retangulo b a) = b * a
area (Triangulo b a) = (b * 2) / fromIntegral 2

forma :: Forma
forma = (Triangulo 2 3)

main :: IO()
main = do
    print (area forma)
