addElem :: [a] -> Int -> [a]
addElem arr index = do
    let (x, y) = splitAt index arr in x ++ [arr !! index] ++ y

duplicateArr :: [Int] -> [Int]
duplicateArr [] = []
duplicateArr arr =
    duplicateArrTwo arr 0

duplicateArrTwo :: [Int] -> Int -> [Int]
duplicateArrTwo arr index =
    if index == length arr
        then arr
    else duplicateArrTwo (addElem arr index) (index + 2)

main :: IO ()
main = do
    let arr = [1,2,3,4,5]
    print $ duplicateArr arr