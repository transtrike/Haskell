appendToStr :: String -> Int -> String
appendToStr str num = do
    "("  ++ str ++ "+" ++ show num ++ ")"

appendToStrRight :: String -> Int -> String
appendToStrRight str num = do
    ")" ++ str ++ "+" ++ show num ++ "("

mathFuncInner :: [Int] -> String -> String
mathFuncInner intArr str = 
    if null intArr
    then str
    else
        mathFuncInner (tail intArr) (appendToStr str (head intArr))

mathFunc :: [Int] -> String
mathFunc arr =
    if  null arr
    then ""
    else mathFuncInner (tail arr) (show (head arr))

-- Super fucking retarded implementation upcoming !!! ---
mathFuncInnerTwo :: [Int] -> String -> String
mathFuncInnerTwo intArr str = 
    if null intArr
    then str
    else
        mathFuncInnerTwo (tail intArr) (appendToStrRight str (head intArr))

mathFuncTwo :: [Int] -> String
mathFuncTwo arr =
    if  null arr
    then ""
    else do
        let arrr = reverse arr
        reverse (mathFuncInnerTwo (tail arrr) (show (head arrr)))

-- The end of the super fucking retarded implementation!!! ---

main :: IO ()
main = do 
    let arr = [1, 2, 3, 4, 5]
    print $ mathFunc arr
    print $ mathFuncTwo arr