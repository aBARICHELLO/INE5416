module Main (main) where

import Formas
import Ponto
import ArvoreBinaria

main :: IO()
main = do
    -- 1
    print (area (Retangulo 5 2))
    print (area (Circulo 5))
    print (area (Trapezio 3 3 3))

    -- 2
    print (dist (Ponto2D 2.0 2.0) (Ponto2D 3.0 3.0))
    print (colineares (Ponto2D 3.0 1.0) (Ponto2D 5.0 2.0) (Ponto2D 9.0 4.0))

    -- 3
    print (somaElementos minhaArvore)
    print (buscaElemento minhaArvore 30)
    print (buscaElemento minhaArvore 55)
    print (minimoElemento minhaArvore)

    print "Exercicio A"
    print (ocorrenciasElemento Null 0)
    print (ocorrenciasElemento minhaArvore 32)

    print "Exercicio B"
    print (maioresQueElemento Null 0)
    print (maioresQueElemento minhaArvore 0)

    print "Exercicio C"
    print (mediaElementos Null)
    print (mediaElementos minhaArvore)

    print "Exercicio D"
    print (quantidade Null)
    print (quantidade minhaArvore)

    print "Exercicio E"
    print (elementos Null)
    print (elementos minhaArvore)

