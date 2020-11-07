trimArrInner :: [Int] -> Int -> [Int]
trimArrInner arr num = take (num + 1) arr

trimArr :: [Int] -> Int -> Int -> [Int]
trimArr [] x  y = []
trimArr arr startIndex endIndex 
    | endIndex <= 0 = []
    | startIndex == endIndex = []
    | otherwise = trimArrInner (drop startIndex arr) (endIndex - startIndex)

main :: IO ()
main = do
    let arr = [1,2,3,4]
    print $ trimArr arr 0 10