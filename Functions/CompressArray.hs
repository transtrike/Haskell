filterMe arr elem =
    if null arr
        then arr ++ [elem]
    else if elem == (last arr)
        then arr
    else  arr ++ [elem]

main :: IO ()
main = do
    let arr = [1,1,1,1,1,1,1,1,1,1,1,1,2,3,4,5,5,7,8,1]
    print $ foldl (\a e -> filterMe a e) [] arr 