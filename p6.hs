main :: IO ()

squareDiff :: Integer -> Integer
squareDiff n = squareOfSum n - sumOfSquares n
    where sumOfSquares :: Integer -> Integer
          sumOfSquares n = sum $ map (^2) [1..n]
          squareOfSum :: Integer -> Integer
          squareOfSum n = (^2) $ sum [1..n]

main = print $ squareDiff 100

