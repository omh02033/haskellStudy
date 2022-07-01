-- takeInt는 리스트의 처음 n개 항목을 반환한다. 즉 takeInt 4 [11,21,31,41,51,61]는 [11,21,31,41]을 반환한다.
takeInt :: Integer -> [Integer] -> [Integer]
takeInt 0 _ = []
takeInt m (n:ns) = n : takeInt (m-1) ns


-- dropInt는 리스트의 처음 n개 항목을 버리고 나머지를 반환한다. 즉 dropInt 3 [11,21,31,41,51]은 [41,51]을 반환한다.
dropInt :: Integer -> [Integer] -> [Integer]
dropInt 0 ns = ns
dropInt m (n:ns) = dropInt (m-1) ns


-- sumInt는 리스트 내 항목들의 합을 반환한다.
sumInt :: [Integer] -> Integer
sumInt [] = 0
sumInt (n:ns) = n + sumInt ns


-- scanSum은 리스트 내 항목들을 더해 중간 합들을 담은 리스트를 반환한다. 즉 scanSum [2,3,4,5]은 [2,5,9,14]을 반환한다.
sumFunc :: Integer -> [Integer] -> [Integer]
sumFunc _ [] = []
sumFunc m (n:ns) = m+n : ns
scanSum :: [Integer] -> [Integer]
scanSum [] = []
scanSum (n:ns) = n : scanSum (sumFunc n ns)


-- diffs는 인접 항목들의 차이의 리스트를 반환한다. 즉 diffs [3,5,6,8]은 [2,1,2]을 반환한다.
-- (힌트: 두 리스트를 취해 대응하는 항목들의 차를 계산하는 보조 함수를 작성한다. 또다른 방법은 인자가 적어도 둘인 리스트는 (x:y:ys) 패턴에 일치한다는 사실을 활용하는 것이다.
diffs :: [Integer] -> [Integer]
diffs [_] = []
diffs (m:n:ns) = n-m : diffs (n:ns)