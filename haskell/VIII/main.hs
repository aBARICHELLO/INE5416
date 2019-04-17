import Formas
import Ponto

main :: IO()
main = do
    print (area (Retangulo 5 2))
    print (area (Circulo 5))
    print (area (Trapezio 3 3 3))

    print (dist (Ponto2D 2.0 2.0) (Ponto2D 3.0 3.0))
