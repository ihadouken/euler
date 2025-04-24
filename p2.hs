main :: IO ()

sumEvenFib :: Integer -> Integer -> Integer -> Integer
sumEvenFib limit seed1 seed2 = sum $ filter even $ takeWhile (< limit) $ fibSeries seed1 seed2
    where fibSeries :: Integer -> Integer -> [Integer]
          fibSeries fst snd = fst : fibSeries snd (fst+snd)

main = print $ sumEvenFib (floor 4e6) 1 2
