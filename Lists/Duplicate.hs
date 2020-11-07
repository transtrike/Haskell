duplicateArrOriginal :: [Char] -> Int -> [Char]
duplicateArrOriginal arr n =
   if null arr
   then []
   else 
       (duplicateArr (head arr) n) ++ (duplicateArrOriginal (tail arr) n)

duplicateArr :: Char -> Int -> [Char]
duplicateArr element n = 
    if n <= 0
    then []
    else
        [element] ++ duplicateArr element (n - 1)

main :: IO ()
main = do
    print (duplicateArrOriginal "abv" 5)