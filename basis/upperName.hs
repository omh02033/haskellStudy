import Data.Char (toUpper)

main =
  do  name <- getLine
      let loudName = makeLoud name
      putStrLn ("Hello, " ++ loudName)

makeLoud :: String -> String
makeLoud s = map toUpper s