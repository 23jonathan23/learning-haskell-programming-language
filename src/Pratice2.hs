module Pratice2 where

--Lambda functions

-- (\x -> x * 2) 4
-- (\x xs -> x : reverse xs) 'A' "UQIE"

-- high order function
ev :: (Int -> Int) -> Int
ev f = 1 + f 5

double :: Int -> Int
double x = x * 2

result :: Int
result = ev double

--javascript exemplo map

--map (\x -> x * 2) [1..10]

--javascript exemplo filter

-- filter (\x -> mod x 2 == 0) [1..20]

--javascript exemplo reduce

-- reduce (\x y -> x + y) 0 [1..20]

--currying and lazy Load
sumThreeNum :: Int -> Int -> Int -> Int
sumThreeNum x y z = x+y+z

sumCurr :: Int -> Int
sumCurr = sumThreeNum 2 3

--GUARDS GUARDS
imc' :: Double -> Double -> String 
imc' p a
    | valueImc <= 18.5 = "Abaixo do Peso"
    | valueImc < 25.0 = "Peso Ideal"
    | valueImc <= 30 = "Acima do Peso"
    | otherwise = "Obesidade"
  where
    valueImc = p/(a * a)