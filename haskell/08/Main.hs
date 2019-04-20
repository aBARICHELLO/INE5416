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
    print (dist (Ponto 2 2) (Ponto 3 3))
    print (colineares (Ponto 3 1) (Ponto 5 2) (Ponto 9 4))

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

