question = 600851475143
primes = filterPrimes [2 ..]
  where filterPrimes (p:xs) =
          p : filterPrimes [x | x <- xs, x `mod` p /= 0]

solve x largestPrime
  | x == 1 = largestPrime
  | otherwise = solve (x `quot` nextPrime) nextPrime
 where
   nextPrime = head $ filter (\p -> ((p >= largestPrime) && ((==0) . mod x) p)) primes
          
bruteforce x = head $ filter ((==0) . mod x) $ reverse $
         takeWhile (<=question) primes

answer = solve question 1

main = putStrLn $ show answer
