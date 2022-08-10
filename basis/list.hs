-- 함수 returnDivisible :: Int -> [Int] -> [Int]을 작성한다. 이 함수는 정수 리스트를 걸러내서, 첫번째 인자로 나눌 수 있는 수들만 통과시킨다. 정수 x와 n에 대해 (mod x n) == 0이면 x는 n으로 나눌 수 있다. (짝수 검사는 이것의 특수한 경우다)
returnDivisible :: Int -> [Int] -> [Int]
returnDivisible n [] = []
returnDivisible n (x:xs) = 
  if((mod x n) == 0) then
    x : (returnDivisible n xs)
  else returnDivisible n xs


-- 함수 choosingTails :: [[Int]] -> [[Int]]를 리스트 조건제시식으로 작성한다. 빈 리스트는 적절한 가드(필터)를 사용해 걸러내고 head가 5보다 큰 리스트들의 tail들만 반환해야 한다.
choosingTails :: [[Int]] -> [[Int]]
choosingTails [] = []
choosingTails (x:xs) = f x
  where
    f [] = choosingTails xs
    f n = 
      if((head n) > 5) then
        (tail n) : (choosingTails xs)
      else
        choosingTails xs


