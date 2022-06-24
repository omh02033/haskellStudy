doubleList :: [Integer] -> [Integer]
doubleList [] = []
doubleList (n:ns) = (2*n) : doubleList ns

tripleList :: Integer -> [Integer] -> [Integer]
tripleList _ [] = []
tripleList m (n:ns) = (n*m) : tripleList m ns