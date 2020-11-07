concatToArr :: [a] -> [a] -> [a]
concatToArr arr newElementArr = do
    arr ++ newElementArr

reverseArrInner :: [a] -> [a]
reverseArrInner array = do
    if length array <= 1
    then array
    else do
        concatToArr (reverseArrInner (tail array)) [head array]
        
reverseArr :: [a] -> [a]
reverseArr array = do
    reverseArrInner array

ls :: [Int]
ls = [1, 2, 3, 4, 5]

main :: IO ()
main = do
    print "Reverse array"
    print (reverseArr ls)