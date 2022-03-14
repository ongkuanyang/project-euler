divides a b = (b `mod` a) == 0

answer = sum $ filter (or . flip map (map divides [3, 5]) . flip ($))  [1..999]

main = putStrLn $ show answer
