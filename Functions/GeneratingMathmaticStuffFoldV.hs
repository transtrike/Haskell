appendToStr :: String -> String -> String
appendToStr str num = do
    "("  ++ str ++ "+" ++ num ++ ")"

mathFuncL :: [Int] -> String
mathFuncL [] = ""
mathFuncL arr =
    foldl (\x y -> appendToStr x y) (show (head arr)) (map show (tail arr))

mathFuncTwo :: [Int] -> String
mathFuncTwo [] = ""
mathFuncTwo arr = do
    let withoutLastEl = init arr
    foldr (\x y -> appendToStr x y) (show (last arr)) (map show withoutLastEl)

main :: IO ()
main = do
    let arr = [1, 2, 3, 4, 5]
    print $ mathFuncL arr
    print $ mathFuncTwo arr