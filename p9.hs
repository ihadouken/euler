main :: IO ()
main = print $ last $ [a*b*c | a <- [1..1000], b <- [1..1000], let c = 1000-b-a, a^2 + b^2 == c^2]
