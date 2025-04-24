main :: IO ()

largestPali :: Int -> Integer
largestPali limit = maximum [x*y | x <- [smallest .. largest], y <- [smallest .. largest], x <= y, isPaliNum (x*y)]
    where smallest = 10 ^ (limit - 1)
          largest  = (10 ^ limit) - 1
          isPaliNum :: Integer -> Bool
          isPaliNum x = show x == reverse (show x)

main = print $ largestPali 3

