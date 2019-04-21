-- 2
-- TEST
module Ponto (Ponto (Ponto), dist, colineares) where

data Ponto = Ponto Float Float

dist :: Ponto -> Ponto -> Float
dist (Ponto x1 y1) (Ponto x2 y2) = sqrt ((x2 - x1)^^2 + (y2 - y1)^^2)

colineares :: Ponto -> Ponto -> Ponto -> Bool
colineares (Ponto x1 y1) (Ponto x2 y2) (Ponto x3 y3) = if dist (Ponto x3 y3) (Ponto x2 y2) == dist (Ponto x2 y2) (Ponto x1 y1) then True else False

-- if((side1 + side2 > side3) && (side1 + side3 > side2) && (side2 + side3 > side1)) then True
-- formaTriangulo :: Ponto -> Ponto -> Ponto -> Bool
-- formaTriangulo (Ponto x1 y1) (Ponto x2 y2) (Ponto x3 y3) =
