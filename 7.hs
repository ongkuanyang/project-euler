primes = filterPrimes [2 ..]
  where filterPrimes (p:xs) =
          p : filterPrimes [x | x <- xs, x `mod` p /= 0]

answer = primes !! 10000

main = putStrLn $ show answer
