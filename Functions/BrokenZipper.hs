main :: IO ()
main = do
    let arr1 = [23, -6, 48, 54, 12, -5]
    let arr2 = [15, -3, 55, 3, -4, 6]
    print $ zipWith (\x y -> 
                                    if x <= 0 || y <= 0 
                                        then 0
                                    else x + y) arr1 arr2