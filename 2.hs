upperLimit = 4000000
fibonacci = 1 : 2 : [x | x <- zipWith (+) fibonacci (tail fibonacci)]
isEven x = (rem x 2) == 0
answer = sum $ filter isEven $ takeWhile (<= upperLimit) fibonacci
main = putStrLn $ show answer
