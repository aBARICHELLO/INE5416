-- 2
-- Finish
module Ponto (Ponto (Ponto2D), dist, colineares) where

data Ponto = Ponto2D Float Float

dist :: Ponto -> Ponto -> Float
dist (Ponto2D x1 y1) (Ponto2D x2 y2) = sqrt ((x2 - x1)^^2 + (y2 - y1)^^2)

colineares :: Ponto -> Ponto -> Ponto -> Bool
colineares (Ponto2D x1 y1) (Ponto2D x2 y2) (Ponto2D x3 y3) = dist (Ponto2D x3 y3) (Ponto2D x2 y2) == dist (Ponto2D x2 y2) (Ponto2D x1 y1)

-- formaTriangulo :: Ponto -> Ponto -> Ponto -> Bool
