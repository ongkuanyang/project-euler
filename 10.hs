import Data.Numbers.Primes ( primes )

primes_below_2m = takeWhile (< 2000000) primes

ans = sum primes_below_2m

main = putStrLn $ show ans
