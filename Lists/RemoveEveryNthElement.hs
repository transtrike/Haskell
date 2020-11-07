removeEveryNthElementTwo :: [Int] -> Int -> Int -> [Int]
removeEveryNthElementTwo arr n index =
    -- [1,2,3,4,5,6,7,8,9], 3, 1 -> [2,3,4,5,6,7,8,9], 3, 2 -> [3,4,5,6,7,8,9], 3, 3 -> [4,5,6,7,8,9], 3, 4 -> [4] ++ [5,6,7,8,9]
    if length arr == 0
    then []
    else if index `mod` n == 0 -- 1 mod 1 == 0 -> 2 mod 2 == 0 -> 3 mod 3 == 0
    then removeEveryNthElementTwo (tail arr) n (index + 1)
    else
        [head arr] ++ removeEveryNthElementTwo (tail arr) n (index + 1)

removeEveryNthElement :: [Int] -> Int -> [Int]
removeEveryNthElement arr n =
    removeEveryNthElementTwo arr n 1

main :: IO()
main = do
    print (removeEveryNthElement [1,2,3,4,5,6,7,8,9] 1)