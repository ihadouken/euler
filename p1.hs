main :: IO ()

sumOfDivisible :: Int -> Integer
sumOfDivisible limit = sum $ filter (\x -> x `mod` 3 == 0 || x `mod` 5 == 0) [1 .. toInteger limit - 1]
-- sumOfDivisible limit = sum [x | x <- [1..limit-1], x `mod` 3 == 0 || x `mod` 5 == 0]

main = print $ sumOfDivisible 1000
