sum = 1000
up1 = 1000 `div` 3
up2 = 1000 `div` 2
triplet = head [(x,y,z) | x <- [1..up1], y <- [1..up2],
              z <- [1000 - x - y], z*z == x*x + y*y]
ans = prod3 triplet
prod3 (x,y,z) = x * y * z

main = putStrLn $ show ans
