main :: IO ()
main = do
    let arr1 = [1, 2, 3] 
    let arr2  = [4, 5, 6]
    --BROKENNN!!!
    -- print $ foldl (+) (head arr1) (tail arr2 )