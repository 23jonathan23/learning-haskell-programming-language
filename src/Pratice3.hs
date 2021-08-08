module Pratice3 where

--data struct, recursive and type class

data Tree tree = Null |
        Leaf tree |
        Branch tree (Tree tree) (Tree tree) deriving (Show, Eq)

--sort tree
sort :: Tree a -> [a]
sort (Branch x l r) = sort l ++ [x] ++ sort r
sort (Leaf x) = [x]
sort Null = []

--insert element in tree
insert :: (Ord a) => Tree a -> a -> Tree a
insert (Branch x l r) y
    | y > x = Branch x l (insert r y)
    | y < x = Branch x (insert l y) r
insert (Leaf x) y
    | y > x = Branch x Null (Leaf y)
    | y < x = Branch x (Leaf y) Null
insert Null b = Leaf b