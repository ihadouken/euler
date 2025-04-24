main :: IO ()

listLCM :: [Integer] -> Integer
listLCM = foldl1 lcm

-- TODO: Implement LCM in haskell.

main = print $ listLCM [1..20]

