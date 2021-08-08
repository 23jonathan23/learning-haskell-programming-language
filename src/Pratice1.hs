module Pratice1 where

--Simple functions, primitive types and list comprehension
addMoreFor :: [Int] -> [Int]
addMoreFor xs = [x + 4 | x <- xs, (mod x 2) /= 0]

validateStringIsPair :: [String] -> Bool
validateStringIsPair x = mod (length x) 2 == 0

generateIntList :: [Int]
generateIntList = [1..1000]

generateCharList :: [Char]
generateCharList = ['a'..'z']

-- Custom type and pattern match
data PartyMoney = PartyMoney { 
    people::Int, 
    ticket::Float, 
    resourses:: [String] 
} deriving Show

pm1 :: PartyMoney
pm1 = PartyMoney { 
    people = 120, 
    ticket = 1000.00, 
    resourses = ["Coke", "Brownie", "Beer"] 
}

data Person = Physical String Int | Legal String
physicalPerson :: Person -> (String, String)
physicalPerson (Physical name age) = ("nome" ++ name, "age" ++ show age)