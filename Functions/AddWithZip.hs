main :: IO ()
main = do
    let arr1 = [1, 2, 3] 
    let arr2  = [4, 5, 6]
    -- print $ zip arr1 arr2
    --         map - sum fst + snd - zip me in tuples the 2 arrays
    print $ map (\(x, y) -> x + y) (zip arr1 arr2)