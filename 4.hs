isPalindrome x = let string = show x
                 in reverse string == string

allProducts = [x * y | x <- [100..999], y <- [100..999], x <= y]

answer = maximum $ filter isPalindrome allProducts

main = putStrLn $ show answer
