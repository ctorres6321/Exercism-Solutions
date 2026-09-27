module Darts (score) where

score :: Float -> Float -> Int
score x y
  | distance <= 1 = 10 -- First case if they hit inside the target
  | distance <= 5 = 5 -- Second case if thye hit the middle circle
  | distance <= 10 = 1 -- Third case if they hit the outer circle
  | otherwise = 0 -- Wildcard, they missed
  where 
    distance = sqrt(x * x + y * y) -- Where can go after guards unlike let where we would first define the var then use it