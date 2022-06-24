import Data.List

main = do
  putStrLn "The base?"
  base <- getLine
  putStrLn "The Height?"
  height <- getLine
  let baseNum = read base
  let heightNum = read height
  let area = baseNum * heightNum / 2
  putStrLn ("The are of that triangle is " ++ show area)